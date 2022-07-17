# Trace system calls

Use system call tracing tools such as strace (Linux) to examine the syscalls made by your application.
```bash
sudo apt-get install strace
```

Run your application with strace by prefacing your usual invocation with `strace -f` where `-f` means to trace all child threads. <br> For example, if you normally invoke your application with `./main`, you can run it with strace by invoking `/usr/bin/strace -f ./main`.

## References
- [Trace system calls](https://cloud.google.com/run/docs/troubleshooting/tracing-system-calls)