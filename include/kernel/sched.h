#ifndef KERNEL_SCHED_H
#define KERNEL_SCHED_H

void schedule();

int process_subscribe(const char *name);
void *process_getevents(void);
void *process_get_io_queue(void);
void process_wait(void);
void wake_up_processes(void);

#endif
