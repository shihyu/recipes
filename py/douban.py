#--*-- coding:utf-8 --*--
import requests
import httplib
import sys
import pprint
from BeautifulSoup import BeautifulSoup
import re
import shutil
import netrc

# LOGIN_URL = 'http://www.newsmth.net/nForum/user/ajax_login.json'
LOGIN_URL = 'https://www.douban.com/accounts/login'
s = requests.Session()
s.headers.update({'User-Agent':'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.94 Safari/537.36',
'Connection':'keep-alive',
'Content-type':'application/x-www-form-urlencoded'})
# headers = {'X-Requested-With':'XMLHttpRequest'}

def patch_send():
    old_send= httplib.HTTPConnection.send
    def new_send( self, data ):
        print data
        return old_send(self, data) #return is not necessary, but never hurts, in case the library is changed
    httplib.HTTPConnection.send= new_send

patch_send()

def get_credentials(mach):
  # default is $HOME/.netrc
  netrc_machine = mach
  info = netrc.netrc()
  (login, account, password) = info.authenticators(netrc_machine)
  return (login,password)

def debugReq(r):
  pp = pprint.PrettyPrinter(indent=4)
  # pp.pprint(r.request.__dict__)
  # print >>sys.stderr, r.text
  print >>sys.stderr, s.cookies.get_dict()

def getCaptId(url):
  try:
    r = s.get(url)
    soup = BeautifulSoup(r.text)
    captchaId = soup.find('input',attrs={'name':'captcha-id'})['value']
  # except requests.exceptions.ConnectionError as e:
  except:
      print "[+] Do not need captcha"
      print "Unexpected error:", sys.exc_info()[0]
      return False, None
  return True, captchaId

def captcha(url):
  (ok, captchaId) = getCaptId(url)
  if ok == False:
    return False, None, None
  CAPTCHA_URL = 'https://www.douban.com/misc/captcha?id=' + captchaId
  r = s.get(CAPTCHA_URL, stream=True)
  with open('chapt.png', 'wb') as out_file:
      shutil.copyfileobj(r.raw, out_file)
  auth = raw_input("Please enter chaptcode: ")
  return True, captchaId, auth

def login(user, passwd):
  (ok, captchaId ,auth) = captcha(LOGIN_URL)
  payload = {
  'source':'index_nav',
  'redir':'http://www.douban.com/',
  'form_email':user,
  'form_password':passwd,
  # 'captcha-solution':auth,
  'captcha-solution': auth,
  'captcha-id': captchaId,
  'login':'登录'
  }
  try:
    r = s.post(LOGIN_URL,data = payload)
    debugReq(r)
  except requests.exceptions.ConnectionError as e:
    print "login error"

def sendComment(topicId, content):
  COMMENT_URL = 'http://www.douban.com/group/topic/' + str(topicId) + '/add_comment'
  # print s.cookies.get_dict()
  payload = {
  'ck':s.cookies.get_dict()['ck'][1:-1],
  'rv_comment': content,
  'start':'0',
  'submit_btn':'加上去'
  }
  (ok,  captchaId ,auth) = captcha(COMMENT_URL)
  if ok:
    payload['captcha-id'] = captchaId
    payload['captcha-solution'] = auth
  try:
    # add nforms id
    # cookies = {'NFORUM':'u4cirv4rtes0hvvq6qe0fk6de7'}
    r = s.post(COMMENT_URL,data = payload)
    debugReq(r)
  except requests.exceptions.ConnectionError as e:
    print "comment error"

def main():
  (user, passwd) = get_credentials('simple_user')
  login(user, passwd)
  sendComment(70360001,"upp")
  # sendpost("ORACLE招聘", "")

if __name__ == "__main__":
  main()