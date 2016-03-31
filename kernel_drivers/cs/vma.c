//-------------------------------------------------------------------
//	vma.c
//
//	This module creates a pseudo-file (named '/proc/vma') which
//	allows a user-task to see information about its memory-map.
//	(The various Virtual Memory Areas which are associated with 
//	a task are maintained by the kernel within a linked-list of
//	'vm_area_struct' objects in the task's 'mm_struct' object.)
//
//	NOTE: Developed and tested with Linux kernel version 2.6.10.
//
//	programmer: ALLAN CRUSE
//	written on: 14 FEB 2005
//	revised on: 04 OCT 2007 -- for Linux kernel version 2.6.22.5
//-------------------------------------------------------------------

#include <linux/module.h>	// for init_module() 
#include <linux/proc_fs.h>	// for create_proc_read_entry() 
#include <linux/mm.h>		// for 'struct vm_area_struct'
#include <linux/sched.h>	// for 'struct task_struct'

char modname[] = "vma";

static int my_get_info( char *buf, char **start, off_t off, int count,int *eof,void *data)
{
  struct task_struct	*tsk = current;
  struct vm_area_struct	*vma;
  unsigned long 		ptdb;
  int			i = 0, len = 0;

  // display title
  len += sprintf( buf+len, "\n\nList of the Virtual Memory Areas " );
  len += sprintf( buf+len, "for task \'%s\' ", tsk->comm );
  len += sprintf( buf+len, "(pid=%d)\n", tsk->pid );

  // loop to traverse the list of the task's vm_area_structs
  vma = tsk->mm->mmap;
  while ( vma )
  {
    char	ch;	
    len += sprintf( buf+len, "\n%3d ", ++i );
    len += sprintf( buf+len, " vm_start=0x%08lX ", vma->vm_start );
    len += sprintf( buf+len, " vm_end=0x%08lX  ", vma->vm_end );

    ch = ( vma->vm_flags & VM_READ ) ? 'r' : '-';
    len += sprintf( buf+len, "%c", ch );
    ch = ( vma->vm_flags & VM_WRITE ) ? 'w' : '-';
    len += sprintf( buf+len, "%c", ch );
    ch = ( vma->vm_flags & VM_EXEC ) ? 'x' : '-';
    len += sprintf( buf+len, "%c", ch );
    ch = ( vma->vm_flags & VM_SHARED ) ? 's' : 'p';
    len += sprintf( buf+len, "%c", ch );

    vma = vma->vm_next;
  }
  len += sprintf( buf+len, "\n" );

  // display additional information about tsk->mm
  asm(" movl %%cr3, %%ecx \n movl %%ecx, %0 " : "=m" (ptdb) );
  len += sprintf( buf+len, "\nCR3=0x%08lX ", ptdb );
  len += sprintf( buf+len, " mm->pgd=0x%p ", tsk->mm->pgd );
  len += sprintf( buf+len, " mm->map_count=%d ", tsk->mm->map_count );
  len += sprintf( buf+len, "\n\n" );

  return	len;
}

/*  
    struct file_operations fops=
    {
    .read = my_get_info,
    };

*/
//static struct proc_dir_entry *vma_entry;
static int __init vma_init(void)
{
  printk( "<1>\nInstalling \'%s\' module\n", modname );
  //    proc_create_data( modname,S_IRUGO,NULL,&fops,NULL);
  create_proc_read_entry(modname,S_IRUGO,0,my_get_info,NULL);
  return	0; // SUCCESS
}

static void __exit vma_exit(void)
{
  remove_proc_entry( modname, NULL );
  printk( "<1>Removing \'%s\' module\n", modname );
}

MODULE_LICENSE("GPL"); 
module_init(vma_init);
module_exit(vma_exit);

