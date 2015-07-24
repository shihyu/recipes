function check_passport1() {
  port=$1
  #--trace-ascii /dev/stderr --silent
  text=`curl --silent -X POST -d "AJAXREQUEST=_viewRoot&passportTrackerPage%3ApsptTrackerForm=passportTrackerPage%3ApsptTrackerForm&passportTrackerPage%3ApsptTrackerForm%3Aj_id34%3Aj_id35%3ApassportNo=${port}&com.salesforce.visualforce.ViewState=i%3AJuWH4HRUbzfm1mp%2BysE%2B7y6awOfpg5QTQVn339xLG0mkJOijhfDEAUn8GukUbZGB5StlyeybRhhf6pn%2FWA0N6e%2FxXVWBeYSOivQghkwv69hEkC7D%2Far%2BbUuu0YU0OVB%2FxhSAXS2wOqI56GhSRXS9bMcCV1AAtsAJhNPtV%2BBlyF2m2BqPF3%2FANlj7HLT%2BKbl4w8t79E%2FBGScfoxeY5N4YCM6XQ7Cx37neFO4CSj8ZdfXLATxJ0ZpMfgFUiRVuaeSz6cVwJRqdGAhGMA07yGUIS6b5JpxdO2c%2FOtxI1cUlNxM%2FRwJc0oZS0i%2Ff%2F9N6TfsWskh1jeOtNM1RKtHFzCeCl%2FFjWInnE6I6BLzWgs4OXJ4k4Tm4%2F0E5qASdWNfqWCRval3mV6XUnNgUlzTvaFm8wzWyaNCU61hUGoTo9u%2BeZIO1wfxZv2TSu8BtfaTQ5bvwD5Ry8IwbOikIYtsitsdFaEUnuijGjVzEkb5r4jlPgFGdEbqmTdQr7T3WI8uUU6Aofsk2GX5i99Q7dUVjT%2BVZo0UyE1s9BbmBpEiAgoyUbF6nD74HXnMqL1vOTiXRlRw44l6wkG9L48rxdRnmvDwOxeO%2BrRGkqLDVmjPMS8ARR0g6upJGWk%2BKYMJWvOD66ILyTAZ0Bmli%2FUJhZNBLVx9SRVf0vRZEwapwgCIPqjTn6epOON7POBvF0hvIOR3ZdEcYsBBymPDozmpg0EGnv%2BB4pcEE1shLRroQTl4BgtFuC4rTTqhWMMCmqOISlK7AApf1FaCa6vTlZlb%2FMAFbGWbc4YzvPEBNcfk7I3GzvoAPLtu04%2FvGABLhXWk4Yb7GxQVfDZeG1tO%2BWn9VfTt5NEFPXTcYnKNK%2BVhDo6PLabbN1Ki2un5sPUJURO%2F5%2ByvbUPZJrr9c1ne%2FFl%2B3ynnFZQbflEsEoNY4k%2BcdJuec051VDVDB88gFLN%2BHBhhb7Gi86HRqFab0uwEgPDZ7py%2BYmw30hVlxst7ZHKWk5lzEyoFYgvX1mYcssj463tn5eU3VYulrSD1VlDTYkPY5nPYcuYPcvLyqE9dWC2n6UtcoASoFd1LlIq5o3Zq6L1G7ChdusInvVEJQkkhsD7vNQzJ34jj4Xay%2BfDFkB7m5kDAlW01feye4HvJrIXNCv1nXyFt0yFcziKkQ5FtgH91vz3PhzSbSuGTIRiVL%2BsSH6%2BfpdUEJnLXzx%2FwQKhtATOOVe6VIa01zI5lTXABXpszyX3lbTEjqad%2Fp%2B9kJqLR7PkMVk6uAcRx7QXVrO1tRh%2FpbHqkU%2FWweWr4A7HmJENfm9cBfWlRXOMPbyRrNG%2FwLbjv5sD7GOvxhe%2FibHGGijsFQ3Qe8poaS6Xll98C5wf%2BTt%2FZr6IwP3GPLxtu1Qq7z%2FK%2BNz5SgSZ7XR378gSv2LEyeOW%2FzKq0Qw8cnDOXI73QyyWh0vdqLmT2yBmcxqyUwWR8MaO66zgq4IphD9o37pLdTFaZq9oyP4VGQE%2F3OQMGzVO6j58xPfGN%2FtBaZqA0LNfdpzet1%2F6H97KA%2F0ZIU5QkfKwzSuZtfiaCkmgkPtdsI58FOQJseEDDnuDQmMrMHfsL4reM1rfFHqRpScSyFkokfUk4CGYhnm1thbRCGWK3BBFH9D%2BlkUbQ6bbaMv3D2LrzYDa7ZY5Mw2SV17cPSTDti26qIN30CNe8VkD%2Bs2cPvD5GqEZoKnyfndb2RvLxJziijYfZPMR0o3G78Rw%2BIhrGwvDnMucT5XTOiQZmyxcOgLjfisxhMgfql4v1man3tCbBp%2B8I8bDQ1%2FW%2BKpVs%2F313HU4W3DLrHpxmsjxYuhGw2%2FQWWBvlr%2Feq5hKmiHDkZLOYPQE5tQG%2FBpgXFT8Kdo4%2BkHP%2BYX47oNJfHybKvOOurZBG7OovJh%2FHjauUvpo2UIVZpdNJHgKT8ute6UyNK41Ei6TOLlccUHSrWvR0X3JiUJsoqh5OhNCk%2FvE9m0iirwsV84oon8P1XfbUWBsQ756FjQtd9hBfPsbbD1tTnfcW%2FxDDzHaXRVQS0f4ZYNJqHwWzNXg9DzknuyFM0qz3WWzdsTnT50VuJErPJ7rwWpIcBN3sE%2BmPAwVFegpTooJXReV0IVcvS1LUuabctPRcP7DfRAIiMj5F3NSJs4IRZMBTnGB86x6nB9UHPSlxQM2Q%2Feqt1Y0iyiPmv58SmsFG4F6XE1GMi%2B3qh2rtDzradwrwvkdQ6hLWudnZGPU5ky7wxByedYYXQ%2FsUkJM4GeTMD5Lzxz2Og2219K6gmodWOcvP5azHcbDDAGKHO2j5AT8tw4S29JCmTjVVBfM9FJvid4gXfcjENG%2BIUYG77FIoHiYYw6PvIC5xMhutX9x0C7BkLSfnWnOmeCiHBbR55pqGRYyUEWUouaDDa9htNz%2BGIB39UaPWZRaaoPRC2qFKKuYNm5gDnFkImOSsvmcDimrLagweJmVFfjpJe3eMKxC4Oe79cmlH%2Bc1PKCPpCx7gAUoYWlzf4Z%2F%2BVvaLSY9aeohqH93%2BYj366sEwMZHxtZCYEQcVHLBLKCCEgtNQ9HCti%2F8vkieER0z3L39JfVRhS%2F5nZkKGq4tsi9Lw5t6mB9fSlTPOULT2S%2BqQPcyPODRuwkszzS0oEqbGwYbjAyg8PzIvndiztDuMD2n0x%2FzYQoLF%2BhzNu6EirRRiyN6mHDleq4GUahaKN%2BiOd1Yzz4y9XYrt4S8DBDEHGZvNGMNRrPqGMC9h8KHBOGDC2ma76fRfqqslQzSGGJj6E27c812sMgZxIxIbKyqTeUKieuCNSGktxJg88IpJhjMhht1P6EwsWmDm%2BNnEtMQbUVr%2BIkbZYtnfUph4GHq%2BVjNWjjfq4bd9hfOk%2B%2BtsknowYXP7mbMOi6snd2BX%2BDpHUmfMZ1PoDk80soazXo3GGX3f86vh3ZGgboujzeuJFsz8IarRKvsCS2YnHCE8Q6axiooFbtP%2B0sdTlsJncQbLZg%2BTFOyWv5z1QCoIEqzuk1fEqiwozDKFoGSyTmAuTxQKPSRU8t9sC6ScUt4FYMNEMajFFHt00Qvstd6JrKmn9L7AkaGYOjJFg%2FSUpeH7pw3HhrQXEI%2BFSQgLo698yf99IOMt0cD8eDlF76KSCuMaGz6vf%2FzQQJ2bM%2B0TKPoA2M4knFvrsw73QdJ26dueYNtsFfcM6lDIdFLpo%2BAebvv4jrfSfDcasG9gaVYnp2vHtFL3Gu3%2B9Em%2FSCycT%2BCIOKi8yL3wgZk5X8fBxx2WRYfd567m8Ir2N%2BJ2WgPZkPLy%2F%2BNR2jJQz3%2Bq84PEoAQZKadqUbaym6ZkWg2de4Ua%2Bdaejlx6XqiYpErmlqgL6qsJVSpj6fCBAXNW%2BqkEB2YhdyRpkah0WYQ4bVv6WRSZY%2FQIDUjBiiupBN1BWrm5zA%2FgCJpuX3CAWfqpX%2FkUtuDbE6TtlAuTG2XUAjyU2T0c0cKPDsBsj8U8xAoIXIoRjGksHwatAeWycjZFtPUMkU6PMJd9lvK%2BVRlWTcTtWr%2BT8nRcwllPkSF1QSNWQ1g9jrS90FJybJ%2Fb9mezvlkD2d8R0ifspAjMIEPiWNSRAd9WvpdarDXpOyh3bHZZvhqkfXGxjbo4roKnW4XAu7wC3lWKWT5dNdMyt%2FhGNzo2wHb73bMSmnSrDxV%2Bw%2BIkzWVBERYRkFJNsT%2F2o2c9oCWRZI%2BQR4UR9SxT5oDKnUtquMVGdy0BlxOfQoIILC6OD0tpGpAAghkKaZ5vU34%2FPGhWzKgCqJ3Ce%2BpkMC%2BVm%2Foaq4iarTxgPtRDh6euB3btSgPw8pRRK6xHeNimI671KplbdPwmQFAb9I%2B%2FUKgV0e8RHYLoloO%2BWIluv2QxvXudEg3LaUvd19Sn25BpD0GmYeiss%2FhLXKU3a404R%2FKqcEKXKZD7cyb7UTUWFwgSyP1MhZs6T0N0xhq%2FcIx%2BwKBX5I3T2U1X43qgWalDn00B5dJ6FKE%2FpSYpR1DamWivuJsJJCToq657p%2BRwipqNlZ%2FwUrdLpATQIqxsiKn1aEwW0E%2BY9YPt6TNfKpOcu6g%2FTUst8pmZqVTMglStJqp4zvdT%2BBx1seivL2BTOcQjVLy3hWuigPmGL%2FOhdzrWCAGUHjq4FOm2Ly2ex8Nu9b%2FyGfgXD2tIuzfq2p6C0jbK8l%2B3YmXfgil60Fa4qO5ACclHMi4gpecS36poezwqlSjYvaHIlEq4dfbHYCMhHxA6dcXcPInQaG2VxbCjYzmQwglYJUpg9OZHQyfX2rzVd8Ba8wWLJVE4oeo7jJunUm8RwTho0mU30J2%2B3XGaW4pkp9Sy11P5g93vkkbuRI5voUmh7uqeXwy4lcU9fCJ6pu5QJCZweJbI3Ru01Qqwp62g%2FtFQsIh9%2FB6BUKaveehgw2%2BkCNbAfNgmuEJhSQDF%2BOmobLkSXJf9dZP0%2F41Z%2FZXAwk3EPZmKMxjkQ1JTFaCdOqpADRkf8d9MgfO8PWAjxYEqyMHCbNXf4ksOd8uaq%2Bh0sjKQBfrn3u904%2BV181CRKyb4Cy7vg3MsRb3T6YEW%2FLYsf3nP9rO0ubN6buVpRjnGs1D7V3BaayUfCyUHyi%2F3qDc46GgKEOMTa6R663xDLcHhE16GL2p%2FMJIGyvMFm7OuXBqKzFvRWestzThCYiUkYe4oh3w4EdkzOK7D2L3yBhnwzp%2B90ozEzlemdiz8P%2FIksZobAgm%2FZOXJaubmqQX0kug8DUy%2BVkUn%2B%2Fzh4sf3ct4ixSDpt2lXWoidEpz340VUenvgfDti4nlcsoWWWQsMG58MOs0MwC2AsBIM5B9IYnHieJitFOT6wOtupVlakLNS2c2TWK6ggsj2AAzN2ZekrkVIuk1uG7yM011T%2FGadGMtTzbPH9fIltCl1b2HGXAmJj6z53qqXv0Ia%2FYhDdJxTSxp%2Fg6VLVqiV6%2F%2FQpOakkOxVXEvQS%2FCPOslcixruvTC0L9k2vFc%2FT6d45VXmwINJaQu9rT8EWIEMsjQpZqKbBAaUzDTyL9Nph%2Fl%2Bmmr9V44Ed040brHiRAK1S32tSrCFALWjcrm1BmVGT%2F6s4pmfPR4ahZmukUrHofCB02LFz7eHarnrGlzR0MNTEgz7Mz6phAgbaVVD1zSsL3M3K%2F71idtGDSO05%2FhVdrNdlAPuxQC7naBQeuc6z7gE83G3ERiXSWsURLGVtrl1xjNusvUVQAv9N9HNdHP1xj%2BzNIqoeWYF1LMxUJo7YUym1dMVpoC8zJCGjlCKadLchBNm%2BfTKrs8k4IODUulwSf1Jc0PZIFO1GIrEMcJz12buVzsBbI1W%2BMnmuQmV%2B%2FkARFneuU8k9sW%2Fw67KnyNc5dmlKvL8tk5kDHpdIqmOxPjTvre4oX%2BRbr6idTjSTCoivKI2xUqlma18MlTW5kUvWHQrPiCfcEY7X6p39wwjgWo1q281RivsrYrvF3sFYUXWyaDyI5KyFTZLdRXD3mS5Qmuq0pWU2fZ0Ao3%2By%2BDWiVwk%2BUCHaAZ3TsUjy0ummgbbbUSJiMiX456m1EYoHB4T7MTbiin3vUpWO14kw7qmgCzVltcmeV%2F2y1C3h5cEbH1q2XngVMgb24owTsMrCqAZihXl949w1U%2FDv%2F48M9MzU%2BtOBJ95qZx5waIj7KIb7VylXVC4t%2F9sKY6lOATkCTOtvZc0Nk0SUWGb26OdW76ufODP5NpBvAqC6mwv65zXWSGuggmh87pXrudxO6wgIFtoMmAvicC80Ve3D9%2FEZH2gnzPnvf4kTuOoymZ6wcUPtil1a71Vb1LYG06kyr7x3LqRFxVPCGOLJJOrHL14mDTU1f6zc9teqyxygY%2BjkiYkzNaehlygJWrcZMQUtJR8c0uQxHuANRsYI9%2FJm3%2BrrIrYbJwuKrhtRGwDZto2vNjlVMljzxl0WDJyixB3uASTKR5eeWn8sTdw0c%2Ftyl9K%2BtCQ%2FjToM7sNejDMBLOUjLORzLb1Mqrg1G9fye4dpKAf06SZEHL1zzk2jAViQe1zMsu32BwoYg%2FsAYbI%2FgyEMt80dj%2BkY7IDpaQjoXGet0HBVi8k9UUmZbb6RVfcOdUJZhqGh0TD2K9CSR0%2BqJ67w3eTGVI1wuIfkhE0xSsdB2ho%2FUNNng5KgoukOcjKGhKNPIo%2FJgQTnehjhXKLCN1Ep8uVN4j%2F%2BbFWnQXQuc6k8LOStgbjKzBa%2BWw2a1XeZvN1ElWv5UAYI8pMbDuevkA%2Byd0nzikdH3qdVQ1a%2FSyBkJnqyHenLJncg5JL3M8SGnyP5sd%2F7SQ8HcUVV4QSzDO4r%2Bsn77L5YwwUkZfkZ5RbMK9LpzOJIfhwk%2BUu7mDV%2BEuro8%2FkWU5Wqz63KhyG7IQHg3IIM2JFQuRtWtqmhw5Ly4%2BiH%2F3TC3ZxVuQtaZUyX4w%3D%3D&com.salesforce.visualforce.ViewStateVersion=201505211855550253&com.salesforce.visualforce.ViewStateMAC=AFnAQJBXmPP8S8FuiIrSZgn7OTV9&passportTrackerPage%3ApsptTrackerForm%3AtrackButton=passportTrackerPage%3ApsptTrackerForm%3AtrackButton&" http://cgifederal.force.com/passporttracker`
  re="<td class=\"data2Col last\" colspan=\"2\"><span class=\"result\">(.*)</span></td>"
  if [[ $text =~ $re ]]; then echo "$port", ${BASH_REMATCH[1]}; fi
}

function check_passport() {
  port=$1
  #--trace-ascii /dev/stderr --silent
  text=`curl --silent 'http://cgifederal.force.com/passporttracker' -H 'Pragma: no-cache' -H 'Origin: http://cgifederal.force.com' -H 'Accept-Encoding: gzip, deflate' -H 'Accept-Language: en-US,en;q=0.8,zh-CN;q=0.6,zh;q=0.4,zh-TW;q=0.2' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.81 Safari/537.36' -H 'Content-Type: application/x-www-form-urlencoded; charset=UTF-8' -H 'Accept: */*' -H 'Cache-Control: no-cache' -H 'Referer: http://cgifederal.force.com/passporttracker?country=China&language=zh_CN' -H 'Cookie: BrowserId=4cxbMp3CSPmHpYvTEdZO1w; oinfo="c3RhdHVzPUFDVElWRSZ0eXBlPTYmb2lkPTAwREMwMDAwMDAwUGh1UA=="; autocomplete=1; inst=APPC' -H 'Connection: keep-alive' -H 'DNT: 1' --data "AJAXREQUEST=_viewRoot&passportTrackerPage%3ApsptTrackerForm=passportTrackerPage%3ApsptTrackerForm&passportTrackerPage%3ApsptTrackerForm%3Aj_id34%3Aj_id35%3ApassportNo=${port}&com.salesforce.visualforce.ViewState=i%3Aa88dvTZIK1%2BP5HSWPiGU39XHFVGVEjw2aakDTrh0%2FaO%2B%2Bkg%2BLeejF4L%2FElcE7SdED3TZAEGsVIRtF9FvVwYABRM8NGKbz4vKyd2Elz2N5li0q87FCPFFh6Uci%2FP0fNXPDcbyoKkzWvtWkozkKGONS%2F03mTtCZHpwVkQumb9oxkLDa275Fu7apFN8vzUE4qH8mm42Av3QHVjSE3%2BNGjrzbUMJsT5YXRX2xPgvq4tZo5Tpzf16F4CdAcGro1LHw0NEtGKuAYVhGZV34IEMsfdxeJnd02b5Li5E4KlF1cBonQ4If%2BN59rLoQQJRI3GNMOCgDNQqrcMDHaMeRzzgg0eFOjmOZy6aveQ8K1Uql5bTAyGwOGbPXi3vVGw8bTJtwBECOSUv7C6n5H8SvDcATNLYu1%2Bmho9XczmIw2HcRs8hn%2B6ZMxReyhv90HWAJy1643nd635ONHMNKkHn2jVjkeVklILOF1xn4mL%2FSe9ZHoEyf5mRrfB2ZFOUPT%2Be%2FqxAUuALB%2Bsx8XEAy5GHiTjxVBa5hwrbtZWGwMbAcXstxO9KdLfmTEX015PXVEfLNfOOKTBmCLHfYe1%2F7zkqhMLdeZ0T7sLZ3%2BVkTvwk9O2u4j7Xhwr0CbuRrfLjcz3V1aYmgYaEY%2B6e9DZgBu6bozFveakZrTn8pZjPR7caXdzQ5n%2F1UD9OdV6lz6VNUSR40YPS0qjIx61lla59lm4yqQPEpnpJNSbSzV6W10MpY3UcYFqi2WypjrNo6ajnQKLgKcQp7OuuK6bFqeZ%2FKrtIGDohAmXaAIcjci0n7RucIYMTWAwzKYax%2FmkYg%2FGfNMdgFfOwQsRrY6sV1F5sLD0psj7qltL0bHYBhTDmY2JKg4mMG1IsL639ibIYixwP9gdnRurwYxDEMBgszaky7R%2FNtAalnnSbLc7arKJbt%2F0lYXvGHCJI0fzG1reD1wk%2BFqVIsQV43dHwPJr4vg8qVKB1HzQkWNQwPZygcFXJjiMX6o73Q5%2BNuB2SQefXHqEjppRvQJkCVuWleND55%2FG3P5Ggt%2F9g8Dm8vaaeqGB%2BJ9MvYkcX0vK0aznmdekJawJI6gOslHZI26ODVlElwiivSxqghaTIy6ODg1AC5kHeU8WhUA4Ig3fR%2FQ%2BnSeMKb6qELbrgYcH0hrFwR8LE%2FMAZLFegiGTYYI%2BPQ83xisbcxQb6lL9%2FrTCtMZuGa7mEelqmGjUjV0Ow%2FcToxZb1OZrkQBs8mHeo31%2FKOC%2FLmEKrtr2E9OGjgYnj3c5yUShKDkxDWDFAV%2BKqSDHMRhe4PTGBeOJYOphZOCF7yRflA47wX13pVV%2BPKlwwK23YJsPuKdDInH6Rd7gfdwCQeyplDVJtNTqtvmf5JTPB8zlkWTVRFa%2Bg%2BlXrtqeJRx%2BFSelNDFZTupfv0Au6jcXPvQ5XFhiTiQuDjg7CX5zhXDPk0KkF8xCQhCFE2gk145acFFmZVw5cKA33Sgi%2Fl0A4sc82mPPrv%2FiHGyMlKE2i3x7it9iToIY1pHyMUv4tv9iS8bz%2FDDatiJsEGaHweDptXMKLXZDs%2FFTckBJfbwl%2FHoVGifvAC9uCf5XrpZ8exz%2B9L%2FaSthF5rNY2SvWHvnwAvnyffCqUjr8GV%2FDmo7F47cX%2Fdx7Ofvuei1k2ct963qEzUsLQ1GsMpM4vNQebzsIrOIML%2B8h%2FODhLeqo7k33w5152Est%2BtNSxx9eZD5BUepCyfiVRxLTzjvUzhtgC%2FWhSCenMeOyY6g3YmO5e4xcYSUZ227FByLGadYiZn%2BEmJ51PZ7MNYvutAvIutmRPrldkFBrGUUjmOJZgtwLRicHrx0j%2B2FvxccS3LFFxuXBCG2WGYxFARD%2BFI9JmKpMD3fffFCfCA9d7uPVV9JR38OG0TGWJqEeVkE%2FsIwqo4wylSrf2xCOMwjbSTkmKlMwaEtSs0MLckaRzhTGFwBngKUm2L6P3gKdMHqhN4xCiGCxmk%2BDtyc%2BT6Wo%2FtkXtBbF5NmIjXlVcbKHh%2Bv7D%2FOD9hMnZ1TSWtGxex4vraDRFotzQ1%2BjYi6AQBhYhCQaFfOypA8%2FL7bFUALO5geOK7dE%2FW6Ojpsw6fbDXJ04ODCf1EPa0UV3qqn%2F8DM3ixutOh%2FxKtL1pX3DLUtK%2FYiWEMBXmg%2FHUo1zdSviEICmYXFTa1C%2FiqZ0gkqTosZCuCYf6KKcwJ%2FJohNzGnf9h3OFYBif2SLrUzctXI1ovMQ3BeIwIiZV6Gl08KwOCt4Vzjyua0EscaOs8kXdRZFbU0GWDUYmdgMGf0iF3ezLGkPyC5La8wcLRx3VOqMjXQY9Mi4HozUAfkpIQJ304tVLcQ%2FkzXkkKpgv00qpE0AqzsVRFiANE98S76h6XP5wo9r1ehyEBRV8R1vdQpCMe7aNCI7pb%2Fm%2F0%2BPkdyon0scknMN2zhAoAIChsvszyxTdzMzYs4JO1hyav%2B98sr8i85LKwmcSWWPUzTXZxNf9%2Fh%2BNb70vkQxNtf04WygQ8MY2ksa4hqQ92YrNgvqoBB4g9%2B3RkjBwn7OVGv%2BThLADNoNZIrFfLaA872AxRwfBCC6X6GuafODfyblyfr7f1E%2FYmbwwst0fqBL6tW%2BuVJv3fPphnBQO7bi30XWufjG5yQ23w4MczlmhHb6QGsecbjonQ81xDWcabj58c9JamxppwQxYLRsDzPPZApC7r8yg0fIE6z%2BJwP%2BZ77oRPxyASjgWp8y8BayvCwtr2XzoPrkSLwENK2wfNeksFmbvrTlO5hsI%2FT0Mgx3mhlVG%2B34DjJSOj%2BeaFXVwsBXqWnPY8l%2BSFxm6hqP6kKKVmszVXjyZ7SfQGxqqkweoyb3qeVg1O2idED48GdgEH%2F1Cpuhb86xDciK%2B0J7tY541AslGoxPtAf55%2FoWW%2F2fM6cnr9YOjvufherfrxy6l6jcWglXYw53tlOIqwM%2FPgpaoFJw%2FLJGJj30WlYlHKZ88EBTacr%2F%2FLZWCvDqLf8JySsvvOJN1J2SsXeY%2BoVZBlz%2BoFtlFprge8e83wEOnCehS3ghO2Kh%2BjpGiywhDgujJ9xNrHDk%2B618nKDRgnjWiH8FKBsBgsJ6eNwF6Q8o5j6jUo60XVs7OKn5qRXexsAy12g1FxNGq7J2PU%2FEjwDvd5awoy3zsN%2Fp7bi1VpeH9iQEbXV%2Fh5E0gnyHgK4Nv01G3%2BVwcpflxhptQRIAyc7UlznbilY9o0sj0Vknmk4g%2F2eXkSp4WKHyuIYX6f3wLjCA5nBpT0064imFFikk0YWUjDXptlykvHYSR8DSgyFyiCsyz5NNAMPAsA7Rx7Z5HmSe6rdIBwOKnbAUjZXoMIKoEJeVc%2BGS4zzQ%2FINJ%2F6TcR6tw2XHkS77dRlIqW%2BtV%2FN1bUczd7AHsbAMbsJipuHiCK2TQt4NqlAkN8zZXBYOt%2FXSCeUR80Su%2FwtT1mgYZ6Lpg8GK7UYGPgE2jW5m8sHAZ7u%2BUO9OR373N48Nen3wTGNSV%2Fo8m%2FsEi1eVNOjwGfVVzOTrGNIKn639XTVsGM7tAnPwNBHqTfhV%2B659ph7%2FSRZFM%2BeGPmxJheL3cc9dYRPe4%2FcrC8A5ZB4YHba1PYaafdCwNYmUkuTF4z9J%2FIJ4PuXXgAhPrVKRxHU1a8lxcJVafc2A9KHhVYnOuhj2mgGgHitZ2dejPtDi7IAfi6Ic67C3d7346Gw6GdeuHl31H01pE3jSraI2P8er79hC5oPXuMYHDkPTsQRJCAgM9lFmx5uIbahE0l3%2FprhKsXLIAtFsGtKTpL2fYgm4KfM4XZzQBPMwZZufUrP3aa9Nlo09tPkwBAG%2Fx1v5q4QAxeyKX%2Bq9BhIsFpwAG99uErjlR2GE5cwXLh0MLrMMWcjkGlJkHBja7BtV72IdBC4J%2BsykjerB3Z37IsHVEX4Jx0WImzWOU59GKMU2tAYUIvWjiywfh9PRzsPaGML%2FiC7SOJHYiyoYi%2Fm2cye7%2FzejMABWm0J9i47A%2FFdD1w5GxdRO91ueNNQdXJBqOvp5Q0anReknRCtROPg7p235Uy1wgW6SC2pjYX%2BQP0PLDV8PQFrlDrl3VjKZ0WlWzi6yK2Tf4DsxzLuknR1lit%2F9gzPsN7ErLGal3V8azhBVL5t4Wz7BalVeIfTsQLIBAesDxw7He1AA5JXHeqZpO%2F4mdehzjngi6yxeGWHaxJDdtxoyMfimEXG%2F%2BxWh7GMk%2BUbNmo459q4SIBq%2BS%2FB6qXXhAI5cxfibjSpwB4PXJe2Fk8m6uG1VIweyEPczkAxgdNaGiN8PAII0d0dI2vcQyb3ouHljrR6U%2BDqe7Lan2eP%2BDDJmX8TQnYnUBanWENu5YeEWlMgiFo8NCdrLVAx%2BfdOS4elQeTIYDdqF%2BJGKsfIz7umBKuHB5nOhc8Grl0yp6ZDsMHOsG3tHDtOuWXt6Uy5dzblpnnkexfW2RHMm3j%2BlEaw4VH2nRPvIrAqnAtIMo3pe7itf5GcYyb0TJZQoUsviEMcROJWEJSTFQKMjt1oZ3cZ%2BrTrNNck5vz1kzubgpnl0BRsCjjfmrT1BmaaiPogGCymIVBPvH%2FF55TCP%2Fmxhk5qoV1xozOTB3Vwwg0M7UD9jIXgcApi1AfwC3EvBB3iPMZ6Sxc%2Fq1OXFYgTMKYK6mcfgy6SRDzr2eDxjKLhsIlxUodVXcO70C3xb0BMSUWLOufD2Phuuq%2FL1n1rn3fgqd879J6g8OKizEKMFkNqde2LSuZO9kWlIy5KLO1dshDH5zhs01rvEw0iHYO82BkSKBU5h0%2FLV1pvxXu4o4Q9ECckqPkROU4ZiSUvhGhFP12TqjVLg%2Bj8gUy9e3i2nAQXRCqKCBWYS0U%2Fd6o8ohiLswrfnk3XUfNuQmiIsPgZA8gG0RBXS8L2jTrKQ3FVdevK7umRFcmGbBjZNA2Rzqy2bCa3kWc5TSk251PF%2ByQ%2Fa0dFz482mSGUHg4w4oz3cMCr1F1S%2Fi4UIo7orXVuJ3OpqaqxumlAoV4h0qzMuJWH8D3Hij7BXR8potaoS04iqZL3F0f3nS29pTiFQLDxWFy0bwhoRyzxAdJHIs4et4IngjYkfWRnEY6HYaEJRHqme5TiAyEHAURLZwtTQZ8Yo%2FNonWvtDQo3HXEcFvqjHBK5tyVn6SDAE%2FMpZePY9i9Z3haclBWYLkXBgNC6VstQ3z9K03jR9NwsRxtkazEOYWtENwfzBcnysUlOrQmsT0kodfgxEvtBB%2BLSn2BbvxEB2PpLMzCn%2F%2FJrhlWlSZ2ZsXLiEsC8YxF75fH%2Bc%2FYTggs%2FpvW6H0C6jzHQ32MWdOLCEAY8rK2h7zD0V5rUX6GF%2FIu9hdzHvXqRoW4ed7EW%2FgBkbqTrRjyv%2FBag4QO1g3Cksqvavai9a5J5%2FQ03vrUoERhxuU1Q03lepHGkUfdV4Vbqwhw1e%2FvNa9hLicwyC2xc5tIDjcpYoLI%2FOlLFKQOVp24hvNWqhdkI6hQOon258c%2Blx4JqqEE5RmUIOHoYr%2FiKRbaF4%2Foefjw%2BIqpuz%2B7mW9VIQ50FapysTynlx%2FtlG%2FSskyDYex8tvVPb%2FkUMRrjApV%2FyAqPUoGtgvuGaR1xbLBe%2FwhGiSXyEe%2FQTACXdnFoV9R%2Bl5kS3i1ybCLDkjOSGATuK27s4AxOCsU2l84FCjpT%2F3qv5hhNMEeqvbY6bVuwJQv0F%2Bw%2BpaiRVRudf2lQWq%2FPgqzJMedrXKlrGOu1LnwbjlYs%2FksiqDjotXVunGy5%2FMR1nwbmHHXeKbBanZMDWU%2BPPcNZq%2Fd9AkNLqrLCfi5l%2B0RwYPadXvR71c2gV0SO87m%2F76mJcEW%2BmcQVTKBAl%2FVltQA4urLTqXxOOo16k8Zc0p93qkOSogBKJTuFFgd7iBVI2nV%2FZ0Cp8Uqp0BOI2LRa2Q3atU%2FCryjn%2FCj36lJLv0QsPjf7qBFw%2FJ8pFXLYpSsy7cYBRr0ufk%2BfeYgpAkgj1pj4Z3zhaCFdNypQ8oZ%2FbYgSuXVsY8AD0Z3CfvcM0KzyqiibNbPL5kL6kAh2cNgYxfU4tDaLFw%2B%2Bw8jPEOIU9tVBsSXlpVSnSPMPUXSi3a3Gkq71otbWu14FV1%2BXXHAY8w4kxgmR02JF%2FbAOlheveHR9sgGYyT2yHGwhnBhsaf56RlVyPOeZw9oRwSks9pX69nCZpOLg45edApDsDBOwrvYJouASlgMP2WMoQD8MHfjlbhLYLwLVRCjhiY%2Bwsu4rmNmQ7W7wxgTvnO3nvhmiRf4W4P4rpQSIrf5Px5ag%2F%2F%2BWfL63JNavYCtMB7nK43iDB3awIHRpKNb3dU9uAYvX%2BpXNyZdjMcApxmZfUTXKl99qeGDSviDsbnd6qx36pz7HUvzc3cN4z8XH3PHtO2oZD2PUoa8iEAvjZH6nsm%2FeKpI5OMDs7nNSvjFIU4Tiv6nimjjKGpurZJR4Y%2BgxRis%2BEBF4Abgj%2BWQ%3D%3D&com.salesforce.visualforce.ViewStateVersion=201506062026200500&com.salesforce.visualforce.ViewStateMAC=AFDTvNkhfdKI5jXkeb2k3juo8S6K&passportTrackerPage%3ApsptTrackerForm%3AtrackButton=passportTrackerPage%3ApsptTrackerForm%3AtrackButton&" --compressed`
  #text=`curl --silent -X POST -d "AJAXREQUEST=_viewRoot&passportTrackerPage%3ApsptTrackerForm=passportTrackerPage%3ApsptTrackerForm&passportTrackerPage%3ApsptTrackerForm%3Aj_id34%3Aj_id35%3ApassportNo=${port}&com.salesforce.visualforce.ViewState=i%3AJuWH4HRUbzfm1mp%2BysE%2B7y6awOfpg5QTQVn339xLG0mkJOijhfDEAUn8GukUbZGB5StlyeybRhhf6pn%2FWA0N6e%2FxXVWBeYSOivQghkwv69hEkC7D%2Far%2BbUuu0YU0OVB%2FxhSAXS2wOqI56GhSRXS9bMcCV1AAtsAJhNPtV%2BBlyF2m2BqPF3%2FANlj7HLT%2BKbl4w8t79E%2FBGScfoxeY5N4YCM6XQ7Cx37neFO4CSj8ZdfXLATxJ0ZpMfgFUiRVuaeSz6cVwJRqdGAhGMA07yGUIS6b5JpxdO2c%2FOtxI1cUlNxM%2FRwJc0oZS0i%2Ff%2F9N6TfsWskh1jeOtNM1RKtHFzCeCl%2FFjWInnE6I6BLzWgs4OXJ4k4Tm4%2F0E5qASdWNfqWCRval3mV6XUnNgUlzTvaFm8wzWyaNCU61hUGoTo9u%2BeZIO1wfxZv2TSu8BtfaTQ5bvwD5Ry8IwbOikIYtsitsdFaEUnuijGjVzEkb5r4jlPgFGdEbqmTdQr7T3WI8uUU6Aofsk2GX5i99Q7dUVjT%2BVZo0UyE1s9BbmBpEiAgoyUbF6nD74HXnMqL1vOTiXRlRw44l6wkG9L48rxdRnmvDwOxeO%2BrRGkqLDVmjPMS8ARR0g6upJGWk%2BKYMJWvOD66ILyTAZ0Bmli%2FUJhZNBLVx9SRVf0vRZEwapwgCIPqjTn6epOON7POBvF0hvIOR3ZdEcYsBBymPDozmpg0EGnv%2BB4pcEE1shLRroQTl4BgtFuC4rTTqhWMMCmqOISlK7AApf1FaCa6vTlZlb%2FMAFbGWbc4YzvPEBNcfk7I3GzvoAPLtu04%2FvGABLhXWk4Yb7GxQVfDZeG1tO%2BWn9VfTt5NEFPXTcYnKNK%2BVhDo6PLabbN1Ki2un5sPUJURO%2F5%2ByvbUPZJrr9c1ne%2FFl%2B3ynnFZQbflEsEoNY4k%2BcdJuec051VDVDB88gFLN%2BHBhhb7Gi86HRqFab0uwEgPDZ7py%2BYmw30hVlxst7ZHKWk5lzEyoFYgvX1mYcssj463tn5eU3VYulrSD1VlDTYkPY5nPYcuYPcvLyqE9dWC2n6UtcoASoFd1LlIq5o3Zq6L1G7ChdusInvVEJQkkhsD7vNQzJ34jj4Xay%2BfDFkB7m5kDAlW01feye4HvJrIXNCv1nXyFt0yFcziKkQ5FtgH91vz3PhzSbSuGTIRiVL%2BsSH6%2BfpdUEJnLXzx%2FwQKhtATOOVe6VIa01zI5lTXABXpszyX3lbTEjqad%2Fp%2B9kJqLR7PkMVk6uAcRx7QXVrO1tRh%2FpbHqkU%2FWweWr4A7HmJENfm9cBfWlRXOMPbyRrNG%2FwLbjv5sD7GOvxhe%2FibHGGijsFQ3Qe8poaS6Xll98C5wf%2BTt%2FZr6IwP3GPLxtu1Qq7z%2FK%2BNz5SgSZ7XR378gSv2LEyeOW%2FzKq0Qw8cnDOXI73QyyWh0vdqLmT2yBmcxqyUwWR8MaO66zgq4IphD9o37pLdTFaZq9oyP4VGQE%2F3OQMGzVO6j58xPfGN%2FtBaZqA0LNfdpzet1%2F6H97KA%2F0ZIU5QkfKwzSuZtfiaCkmgkPtdsI58FOQJseEDDnuDQmMrMHfsL4reM1rfFHqRpScSyFkokfUk4CGYhnm1thbRCGWK3BBFH9D%2BlkUbQ6bbaMv3D2LrzYDa7ZY5Mw2SV17cPSTDti26qIN30CNe8VkD%2Bs2cPvD5GqEZoKnyfndb2RvLxJziijYfZPMR0o3G78Rw%2BIhrGwvDnMucT5XTOiQZmyxcOgLjfisxhMgfql4v1man3tCbBp%2B8I8bDQ1%2FW%2BKpVs%2F313HU4W3DLrHpxmsjxYuhGw2%2FQWWBvlr%2Feq5hKmiHDkZLOYPQE5tQG%2FBpgXFT8Kdo4%2BkHP%2BYX47oNJfHybKvOOurZBG7OovJh%2FHjauUvpo2UIVZpdNJHgKT8ute6UyNK41Ei6TOLlccUHSrWvR0X3JiUJsoqh5OhNCk%2FvE9m0iirwsV84oon8P1XfbUWBsQ756FjQtd9hBfPsbbD1tTnfcW%2FxDDzHaXRVQS0f4ZYNJqHwWzNXg9DzknuyFM0qz3WWzdsTnT50VuJErPJ7rwWpIcBN3sE%2BmPAwVFegpTooJXReV0IVcvS1LUuabctPRcP7DfRAIiMj5F3NSJs4IRZMBTnGB86x6nB9UHPSlxQM2Q%2Feqt1Y0iyiPmv58SmsFG4F6XE1GMi%2B3qh2rtDzradwrwvkdQ6hLWudnZGPU5ky7wxByedYYXQ%2FsUkJM4GeTMD5Lzxz2Og2219K6gmodWOcvP5azHcbDDAGKHO2j5AT8tw4S29JCmTjVVBfM9FJvid4gXfcjENG%2BIUYG77FIoHiYYw6PvIC5xMhutX9x0C7BkLSfnWnOmeCiHBbR55pqGRYyUEWUouaDDa9htNz%2BGIB39UaPWZRaaoPRC2qFKKuYNm5gDnFkImOSsvmcDimrLagweJmVFfjpJe3eMKxC4Oe79cmlH%2Bc1PKCPpCx7gAUoYWlzf4Z%2F%2BVvaLSY9aeohqH93%2BYj366sEwMZHxtZCYEQcVHLBLKCCEgtNQ9HCti%2F8vkieER0z3L39JfVRhS%2F5nZkKGq4tsi9Lw5t6mB9fSlTPOULT2S%2BqQPcyPODRuwkszzS0oEqbGwYbjAyg8PzIvndiztDuMD2n0x%2FzYQoLF%2BhzNu6EirRRiyN6mHDleq4GUahaKN%2BiOd1Yzz4y9XYrt4S8DBDEHGZvNGMNRrPqGMC9h8KHBOGDC2ma76fRfqqslQzSGGJj6E27c812sMgZxIxIbKyqTeUKieuCNSGktxJg88IpJhjMhht1P6EwsWmDm%2BNnEtMQbUVr%2BIkbZYtnfUph4GHq%2BVjNWjjfq4bd9hfOk%2B%2BtsknowYXP7mbMOi6snd2BX%2BDpHUmfMZ1PoDk80soazXo3GGX3f86vh3ZGgboujzeuJFsz8IarRKvsCS2YnHCE8Q6axiooFbtP%2B0sdTlsJncQbLZg%2BTFOyWv5z1QCoIEqzuk1fEqiwozDKFoGSyTmAuTxQKPSRU8t9sC6ScUt4FYMNEMajFFHt00Qvstd6JrKmn9L7AkaGYOjJFg%2FSUpeH7pw3HhrQXEI%2BFSQgLo698yf99IOMt0cD8eDlF76KSCuMaGz6vf%2FzQQJ2bM%2B0TKPoA2M4knFvrsw73QdJ26dueYNtsFfcM6lDIdFLpo%2BAebvv4jrfSfDcasG9gaVYnp2vHtFL3Gu3%2B9Em%2FSCycT%2BCIOKi8yL3wgZk5X8fBxx2WRYfd567m8Ir2N%2BJ2WgPZkPLy%2F%2BNR2jJQz3%2Bq84PEoAQZKadqUbaym6ZkWg2de4Ua%2Bdaejlx6XqiYpErmlqgL6qsJVSpj6fCBAXNW%2BqkEB2YhdyRpkah0WYQ4bVv6WRSZY%2FQIDUjBiiupBN1BWrm5zA%2FgCJpuX3CAWfqpX%2FkUtuDbE6TtlAuTG2XUAjyU2T0c0cKPDsBsj8U8xAoIXIoRjGksHwatAeWycjZFtPUMkU6PMJd9lvK%2BVRlWTcTtWr%2BT8nRcwllPkSF1QSNWQ1g9jrS90FJybJ%2Fb9mezvlkD2d8R0ifspAjMIEPiWNSRAd9WvpdarDXpOyh3bHZZvhqkfXGxjbo4roKnW4XAu7wC3lWKWT5dNdMyt%2FhGNzo2wHb73bMSmnSrDxV%2Bw%2BIkzWVBERYRkFJNsT%2F2o2c9oCWRZI%2BQR4UR9SxT5oDKnUtquMVGdy0BlxOfQoIILC6OD0tpGpAAghkKaZ5vU34%2FPGhWzKgCqJ3Ce%2BpkMC%2BVm%2Foaq4iarTxgPtRDh6euB3btSgPw8pRRK6xHeNimI671KplbdPwmQFAb9I%2B%2FUKgV0e8RHYLoloO%2BWIluv2QxvXudEg3LaUvd19Sn25BpD0GmYeiss%2FhLXKU3a404R%2FKqcEKXKZD7cyb7UTUWFwgSyP1MhZs6T0N0xhq%2FcIx%2BwKBX5I3T2U1X43qgWalDn00B5dJ6FKE%2FpSYpR1DamWivuJsJJCToq657p%2BRwipqNlZ%2FwUrdLpATQIqxsiKn1aEwW0E%2BY9YPt6TNfKpOcu6g%2FTUst8pmZqVTMglStJqp4zvdT%2BBx1seivL2BTOcQjVLy3hWuigPmGL%2FOhdzrWCAGUHjq4FOm2Ly2ex8Nu9b%2FyGfgXD2tIuzfq2p6C0jbK8l%2B3YmXfgil60Fa4qO5ACclHMi4gpecS36poezwqlSjYvaHIlEq4dfbHYCMhHxA6dcXcPInQaG2VxbCjYzmQwglYJUpg9OZHQyfX2rzVd8Ba8wWLJVE4oeo7jJunUm8RwTho0mU30J2%2B3XGaW4pkp9Sy11P5g93vkkbuRI5voUmh7uqeXwy4lcU9fCJ6pu5QJCZweJbI3Ru01Qqwp62g%2FtFQsIh9%2FB6BUKaveehgw2%2BkCNbAfNgmuEJhSQDF%2BOmobLkSXJf9dZP0%2F41Z%2FZXAwk3EPZmKMxjkQ1JTFaCdOqpADRkf8d9MgfO8PWAjxYEqyMHCbNXf4ksOd8uaq%2Bh0sjKQBfrn3u904%2BV181CRKyb4Cy7vg3MsRb3T6YEW%2FLYsf3nP9rO0ubN6buVpRjnGs1D7V3BaayUfCyUHyi%2F3qDc46GgKEOMTa6R663xDLcHhE16GL2p%2FMJIGyvMFm7OuXBqKzFvRWestzThCYiUkYe4oh3w4EdkzOK7D2L3yBhnwzp%2B90ozEzlemdiz8P%2FIksZobAgm%2FZOXJaubmqQX0kug8DUy%2BVkUn%2B%2Fzh4sf3ct4ixSDpt2lXWoidEpz340VUenvgfDti4nlcsoWWWQsMG58MOs0MwC2AsBIM5B9IYnHieJitFOT6wOtupVlakLNS2c2TWK6ggsj2AAzN2ZekrkVIuk1uG7yM011T%2FGadGMtTzbPH9fIltCl1b2HGXAmJj6z53qqXv0Ia%2FYhDdJxTSxp%2Fg6VLVqiV6%2F%2FQpOakkOxVXEvQS%2FCPOslcixruvTC0L9k2vFc%2FT6d45VXmwINJaQu9rT8EWIEMsjQpZqKbBAaUzDTyL9Nph%2Fl%2Bmmr9V44Ed040brHiRAK1S32tSrCFALWjcrm1BmVGT%2F6s4pmfPR4ahZmukUrHofCB02LFz7eHarnrGlzR0MNTEgz7Mz6phAgbaVVD1zSsL3M3K%2F71idtGDSO05%2FhVdrNdlAPuxQC7naBQeuc6z7gE83G3ERiXSWsURLGVtrl1xjNusvUVQAv9N9HNdHP1xj%2BzNIqoeWYF1LMxUJo7YUym1dMVpoC8zJCGjlCKadLchBNm%2BfTKrs8k4IODUulwSf1Jc0PZIFO1GIrEMcJz12buVzsBbI1W%2BMnmuQmV%2B%2FkARFneuU8k9sW%2Fw67KnyNc5dmlKvL8tk5kDHpdIqmOxPjTvre4oX%2BRbr6idTjSTCoivKI2xUqlma18MlTW5kUvWHQrPiCfcEY7X6p39wwjgWo1q281RivsrYrvF3sFYUXWyaDyI5KyFTZLdRXD3mS5Qmuq0pWU2fZ0Ao3%2By%2BDWiVwk%2BUCHaAZ3TsUjy0ummgbbbUSJiMiX456m1EYoHB4T7MTbiin3vUpWO14kw7qmgCzVltcmeV%2F2y1C3h5cEbH1q2XngVMgb24owTsMrCqAZihXl949w1U%2FDv%2F48M9MzU%2BtOBJ95qZx5waIj7KIb7VylXVC4t%2F9sKY6lOATkCTOtvZc0Nk0SUWGb26OdW76ufODP5NpBvAqC6mwv65zXWSGuggmh87pXrudxO6wgIFtoMmAvicC80Ve3D9%2FEZH2gnzPnvf4kTuOoymZ6wcUPtil1a71Vb1LYG06kyr7x3LqRFxVPCGOLJJOrHL14mDTU1f6zc9teqyxygY%2BjkiYkzNaehlygJWrcZMQUtJR8c0uQxHuANRsYI9%2FJm3%2BrrIrYbJwuKrhtRGwDZto2vNjlVMljzxl0WDJyixB3uASTKR5eeWn8sTdw0c%2Ftyl9K%2BtCQ%2FjToM7sNejDMBLOUjLORzLb1Mqrg1G9fye4dpKAf06SZEHL1zzk2jAViQe1zMsu32BwoYg%2FsAYbI%2FgyEMt80dj%2BkY7IDpaQjoXGet0HBVi8k9UUmZbb6RVfcOdUJZhqGh0TD2K9CSR0%2BqJ67w3eTGVI1wuIfkhE0xSsdB2ho%2FUNNng5KgoukOcjKGhKNPIo%2FJgQTnehjhXKLCN1Ep8uVN4j%2F%2BbFWnQXQuc6k8LOStgbjKzBa%2BWw2a1XeZvN1ElWv5UAYI8pMbDuevkA%2Byd0nzikdH3qdVQ1a%2FSyBkJnqyHenLJncg5JL3M8SGnyP5sd%2F7SQ8HcUVV4QSzDO4r%2Bsn77L5YwwUkZfkZ5RbMK9LpzOJIfhwk%2BUu7mDV%2BEuro8%2FkWU5Wqz63KhyG7IQHg3IIM2JFQuRtWtqmhw5Ly4%2BiH%2F3TC3ZxVuQtaZUyX4w%3D%3D&com.salesforce.visualforce.ViewStateVersion=201505211855550253&com.salesforce.visualforce.ViewStateMAC=AFnAQJBXmPP8S8FuiIrSZgn7OTV9&passportTrackerPage%3ApsptTrackerForm%3AtrackButton=passportTrackerPage%3ApsptTrackerForm%3AtrackButton&" http://cgifederal.force.com/passporttracker`
  re="<td class=\"data2Col last\" colspan=\"2\"><span class=\"result\">(.*)</span></td>"
  if [[ $text =~ $re ]]; then echo "$port", ${BASH_REMATCH[1]}; fi
}

function check_apply() {
  no=$1
  text=`curl --silent -H "X-Requested-With: XMLHttpRequest" -H "Referer: https://ceac.state.gov/CEACStatTracker/Status.aspx" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.65 Safari/537.36" -H "X-MicrosoftAjax: Delta=true" -H "Cookie: __utma=27961390.203853681.1429063096.1429063096.1429063096.1; __utmz=27961390.1429063096.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none); ASP.NET_SessionId=rpo5xaekggecrjvauam5zw3x; BIGipServerCEAC_Pool=446408896.20480.0000" -X POST -d \
  "ctl00%24ToolkitScriptManager1=ctl00%24ContentPlaceHolder1%24UpdatePanel1%7Cctl00%24ContentPlaceHolder1%24btnSubmit&ctl00_ToolkitScriptManager1_HiddenField=%3B%3BAjaxControlToolkit%2C%20Version%3D3.5.51116.0%2C%20Culture%3Dneutral%2C%20PublicKeyToken%3D28f01b0e84b6d53e%3Aen-US%3A2a06c7e2-728e-4b15-83d6-9b269fb7261e%3Ade1feab2%3Af2c8e708%3A8613aea7%3Af9cec9bc%3A3202a5a2%3Aa67c2700%3A720a52bf%3A589eaa30%3Aab09e3fe%3A87104b7c%3Abe6fb298%3B&ctl00%24ContentPlaceHolder1%24ddlApplications=NIV&ctl00%24ContentPlaceHolder1%24ddlLocation=BEJ&ctl00%24ContentPlaceHolder1%24txbCase=${no}&__EVENTTARGET=&__EVENTARGUMENT=&__LASTFOCUS=&__VIEWSTATE=%2FwEPaA8FDzhkMjYzYzJiMjE0MGFjNBgBBR5fX0NvbnRyb2xzUmVxdWlyZVBvc3RCYWNrS2V5X18WAQUjY3RsMDAkQ29udGVudFBsYWNlSG9sZGVyMSRidG5TdWJtaXT3nUGsrsp5QuWrWWVadkN2v8Yltw%3D%3D&__EVENTVALIDATION=%2FwEW6gEClISmrA4CuueB3QMCu8WcswoC3KrOwwYCxfTx9gIC1%2B6r8AoC9MfXtA8C5tme3wICkcD33g8C%2Ftnu3wIC%2FpjUdQLE3KK2AgKUzuy0CAKBsebrDgLUneWfDAKJleyfAwKIpuzABAL6mIB2Av%2FZit8CAqjRrcABAoWViJ8DAtGuscABAv6YhHYC4a3QtgQClLGy6w4C8ce7tQ8C662AtwQCyuP9gAUC7s6YtAgC9Nn63wIC7auJ6QECobiT6gsC%2FMfvtQ8C6c7AtAgC7quZ6QECn8DT3g8CgsD%2F3g8Csbjf6gsC4tme3wICvdSVtgEC%2F7Kr9AsCk8D33g8C46uV6QEC9seftQ8CkLHu6w4CvefmqQYChbHm6w4Csuf6qQYCvbiT6gsChLG26w4Csbif6gsC2bKb9AsC5q28twQCg8DH3g8C%2FbT%2BwQ4Ck7HS6g4C4a2ItwQCjpXwnwMCorj76gsCsLjr6gsCgc6wtAgC09zmtQIC%2BpjAdQKAwK%2FfDwKGldSfAwKeg%2Bn1DQKriub0DgK5zbOsDwKpiqb1DgK7ir71DgLvmNR1Aq2c0Z4MAqWK%2FvQOAu%2F8%2FaoFAv3Hq7UPAqKcyZ4MAt7c1rUCAuSYrHYC7JiEdgKTzvi0CAKFlZCfAwL9x9e0DwLLx5e1DwKZldyfAwKAlcCfAwKN5%2BKpBgLm6paABgLl%2FPmqBQK%2FiuL0DgK91OW2AQKEwJveDwLcrsXfAQKP1KW2AQKhuPfqCwLE4%2BGABQKpnOWfDAKP586pBgLpzui0CAKvnL2fDALersnfAQKazsS0CALn6tqfBgLszsS0CALNx9e0DwLf3Mq1AgLd48GABQKAleSfAwL3x%2B%2B1DwLIsrf0CwKbwP%2FeDwKq0dHfAQLw2ZLfAgKjiv70DgKw1PW2AQL%2BtMrBDgLmmIR2Au%2F8haoFAvPZ4t8CApKx4usOApXOxLQIApyxkusOAtau0d8BAoextusOAuTZ1t4CApOx5usOAvmY2HUCqN%2BitgIC%2F8eLtQ8C6vypqwUCq4ra9A4CkrG26w4C9ceLtQ8C9Me%2FtQ8C4Py1qgUC%2F8e%2FtQ8CvLjv6gsC0q65wAEC%2BceftQ8CsriT6gsCwMfftA8Cz%2BPtgAUC6%2Fz5qgUCxOPtgAUC0p%2BwbALE46GBBQL3x8O0DwL3x4e1DwK3lfyfAwL0x6O1DwL%2FmLx2AoiV5J8DAtGd3Z4MAurOwLQIAorUsbYBAtuurcABArGmiMAEAv2YqHYCiJXYnwMC1a7x3wECncD%2F3g8CyLTywQ4Ct6aAwAQC%2BJjwdQL9q5XpAQLIx5O1DwKeseLrDgLyx5O1DwK356aqBgLC4%2FWABQKe%2FIGqBQKe%2FPmqBQKEldifAwL%2B2Y7fAgL2x6e1DwLfrrXAAQL39YyrCAKTzsC0CALRnYmfDAL56rqABgLNtK7CDgLn6qqABgL5mNB1AoSx%2FusOAvjZgt8CAs2u%2Bd8BAvTHw7QPAtvj0YAFAqucyZ4MAtOdpZ8MAtvjxYAFApLA994PApmVxJ8DArDUqbYBAv6YjHYCsqbgwAQClLH%2B6w4C687EtAgCjZX0nwMCq4ri9A4CrpzJngwC4fyZqgUCnLGe6w4CnvzxqgUC%2F9m63wICx669wAEChZWAnwMC8JiodgKOg431DQLrzvy0CALwmIR2Atauxd8BAoaV9J8DAur8jaoFAuyYjHYC4JjUdQLVrsXfAQKaseLrDgKinK2fDAKI1IG2AQLW3Ja1AgKinMGeDALrzsi0CAKo36q2AgKFsZ7rDgL%2FmIR2AouVkJ8DApb8vaoFApWx%2FusOAuXZvt8CAviYiHYCzrLj9AsC9LKa5g4C5sD0xwQC%2BNCVogoPnz0MY27C1nEoTXA2jmFviDvUKA%3D%3D&__ASYNCPOST=true&ctl00%24ContentPlaceHolder1%24btnSubmit.x=45&ctl00%24ContentPlaceHolder1%24btnSubmit.y=67" \
    https://ceac.state.gov/CEACStatTracker/Status.aspx`
  echo "$no:"
  reDate="<td><span id=\"ctl00_ContentPlaceHolder1_ucApplicationStatusView_lblStatusDate\">([^<]*)</span></td>"
  if [[ $text =~ $reDate ]]; then echo "Update:", ${BASH_REMATCH[1]}; fi

  re="<span id=\"ctl00_ContentPlaceHolder1_ucApplicationStatusView_lblTranslation\">([^<]*)</span>"
  if [[ $text =~ $re ]]; then echo ${BASH_REMATCH[1]}; fi
  # echo $text
}

check_passport 'E17695297'
check_passport 'E08293960'

# check_apply 'AA004WVP10'
# check_apply 'AA004XDZY4'