# 32bit-docker-mldonkey
This is a mldonkey container that runs on 32bit docker. I use it on my netbook.

It exposes to ports:

* 4000 for telnet command
* 4080 for web ui

You can launch it using this command:
````
docker run -v <path-to-the-shared-folder>:/.mldonkey/shared -v <temporary-folder>:/.mldonkey/temp -v <downloaded-file-folder>:/.mldonkey/incoming -p 4000 -p 4080:4080 --name mldonkey -d zheli/32bit-mldonkey:latest
````

For first run, you will need to change admin password, found out which port is 4000 port redirect to:
````
docker ps
````
then connect to it via telenet
````
telnet ip <hostport>
````
and change the password
````
passwd <newpassword>
q
````
