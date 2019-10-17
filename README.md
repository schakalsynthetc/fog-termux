# /fog/termux ## inferno and such in termux

soon to be a "clone and run" inferno emu image for [termux](http://termux.com)
-- based on mine which works but is too idiosyncratic to be fit for publication

the steps, generally 

	- get termux if you haven't already
	- pkg install proot rsync git
	- rsync or git clone the debian rootfs
	- rsync or git clone the inferno rootfs
	- edit inferno.sh as needed
	- run inferno.sh

can mount over wifi and can run httpd locally, which is enough for my purposes. 

maybe we should have a "confirmed working on" devices list but most likely if
proot works on the device then this will too

