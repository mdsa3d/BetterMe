## To remove the grey screen from the VNC viewer

Please follow the instruction in the link [VNC Grey Screen Issue](https://help.realvnc.com/hc/en-us/articles/360003474792-Why-does-VNC-Server-in-Virtual-Mode-on-Linux-appear-to-hang-show-a-gray-screen-or-not-start-at-all-#using-vnc-connect-6-2-on-a-red-hat-centos-computer--0-0)

- Open `nano ~/.vnc/xstartup`
- Check the your desktop environment </br> and add the following at the end </br> `vncserver-virtual -kill $DISPLAY`
- Sample for GNOME Classic:
```bash
#!/bin/sh
DESKTOP_SESSION=gnome-classic
export DESKTOP_SESSION
env GNOME_SHELL_SESSION_MODE=classic gnome-session --session gnome-classic
vncserver-virtual -kill $DISPLAY
```
- Check the port for vnc `vncserver -list`
- Kill you VNC instance, for me it was :1 </br>`vncserver -kill :1` 
- Start vnc server again `vncserver`