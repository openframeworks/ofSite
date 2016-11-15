## -*- coding: utf-8 -*-
<%inherit file="/_templates/markdown.mako" />
${'''

Raspberry Pi
============


## Mount your Raspberry Pi as a hard drive
    
**WARNING: This is a very permissive file sharing configuration that gives you read/write/delete permissions across the entire file system. It is not recommended if you are the least bit concerned about being able to delete important files over a network.**

### Install Samba
From a Shell run these commands

* `sudo apt-get install samba samba-common-bin`

The next command will prompt you for a password you will need to remember. Use `raspberry` if you want to keep the default as the pi user's defaults

* `sudo smbpasswd -a pi`
* `sudo cp /etc/samba/smb.conf /etc/samba/smb.conf.old`
* `sudo rm /etc/samba/smb.conf`
* `sudo nano /etc/samba/smb.conf`

You should now be editing the configuration file. Paste this into it: 

[global]  
		workgroup = HOME  
		netbios name = SAMBA  
		server string = Samba Server %v  
		map to guest = Bad User  
		log file = /var/log/samba/log.%m  
		max log size = 50  
		socket options = TCP_NODELAY SO_RCVBUF=8192 SO_SNDBUF=8192  
		preferred master = No  
		local master = No  
		dns proxy = No  
		security = User  

\# Share      
[Data]  
		path = /  
		valid users = pi  
		read only = No  
		create mask = 0777  
		directory mask = 0777

* Press CTRL+o to save the file
* Press CTRL+x to exit `nano`	   
* `sudo /etc/init.d/samba restart`

You should now be able to mount your Raspberry Pi via the address smb://your.raspberry.pi.ip/Data

You user will be pi and the password will be `raspberry` or whatever you set it to above

**Note: The Mac will often write hidden ._ files on the drive that can sometimes confuse the compiler into thinking they are source files. [Blue Harvest](http://www.zeroonetwenty.com/blueharvest) is good at removing these on the fly.** 


'''}

