### Download
Download [Toolbox App](https://www.jetbrains.com/toolbox/app)
### Install
Requires [FUSE](https://github.com/AppImage/AppImageKit/wiki/FUSE).<br>
`sudo apt-get install fuse`<br>
`sudo modprobe fuse`<br>
`sudo groupadd fuse`<br>
`user="$(whoami)"`<br>
`sudo usermod -a -G fuse $user`<br>
`./jetbrains-toolbox`
