# [WSL Configuration](https://docs.microsoft.com/en-us/windows/wsl/wsl-config)

[.wslconfig](https://docs.microsoft.com/en-us/windows/wsl/wsl-config#wslconfig) *->* configure settings globally across all installed distributions running on WSL 2 <br>
[wsl.conf](https://docs.microsoft.com/en-us/windows/wsl/wsl-config#wslconf) *->* to configure settings per-distribution for Linux distros running on WSL 1 or WSL 2.

## Setup

To configure **WSL**, follwo these steps:
1. Go to the following directory `C:\Users\{your user name}\`
2. check for `.wslconfig` file, if it is not available then create a file with the same name.
3. Open this file with any text editor of your choice.
4. Please insert options of choice into the file. A sample file with all the options is presented below:
```bash
# Settings apply across all Linux distros running on WSL 2
[wsl2]

# Limits VM memory to use no more than 4 GB, this can be set as whole numbers using GB or MB
memory=4GB 

# Sets the VM to use two virtual processors
processors=2

# Specify a custom Linux kernel to use with your installed distros. The default kernel used can be found at https://github.com/microsoft/WSL2-Linux-Kernel
kernel=C:\\temp\\myCustomKernel

# Sets additional kernel parameters, in this case enabling older Linux base images such as Centos 6
kernelCommandLine = vsyscall=emulate

# Sets amount of swap storage space to 8GB, default is 25% of available RAM
swap=8GB

# Sets swapfile path location, default is %USERPROFILE%\AppData\Local\Temp\swap.vhdx
swapfile=C:\\temp\\wsl-swap.vhdx

# Disable page reporting so WSL retains all allocated memory claimed from Windows and releases none back when free
pageReporting=false

# Turn off default connection to bind WSL 2 localhost to Windows localhost
localhostforwarding=true

# Disables nested virtualization
nestedVirtualization=false

# Turns on output console showing contents of dmesg when opening a WSL 2 distro for debugging
debugConsole=true
```