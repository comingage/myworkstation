Install latest Nvidia driver.<br>
* Download from [Nvidia.com](http://www.nvidia.com/Download/index.aspx).<br>
* Completly remove previous Nvidia driver<br>
`sudo apt-get --purge remove nvidia-*`
* Remove xorg.conf file.<br>
`sudo rm /etc/X11/xorg.conf`<br>
`touch /etc/modprobe.d/blacklist-nouveau.conf`<br>
```
blacklist nouveau
options nouveau modeset=0
```
`sudo update-initramfs -u`
* Reboot, logout, switch to tty
`sudo service lightdm stop`<br>

* `cd` to installer
`sudo ./NVIDIA-Linux-x86_64-<version>.run --no-opengl-files`
* Ignore pre-installed script warning then pick defaults for rest.
* Verify driver installation
`cat /proc/driver/nvidia/version`
