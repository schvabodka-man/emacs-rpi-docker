<img src="https://raw.githubusercontent.com/schvabodka-man/Custom-Badges/master/BuildFor/Emacs/Emacs%20xxxhdpi.png" width="300" height="50">

# Dockerized Emacs for rpi

Since i haven't found any images of emacs for rpi, i decided to quickly make my own.

## Why do you need to put Emacs in container?

For headless "server" services. I use elfeed and i like to have elfeed server running somewhere

## Usage 

* Build image
`docker build -t scvhapps/emacs https://github.com/schvabodka-man/emacs-rpi-docker.git`
* And just run it
`docker run -d --restart always \
	   --name=elfeed \
	   -v /home/pi/.emacs.d:/root/config \
	   scvhapps/emacs	   
`
     
     Notice that emacs takes your config from /root/config dir instead of default .emacs.d. This have been done to prevent cluttering your host .emacs.d with stuff
