#!/bin/sh

docker run -v /shared/:/.mldonkey/shared -v /tmp/:/.mldonkey/temp -v /Downloads/:/.mldonkey/incoming -v users.ini:/.mldonkey/users.ini -p 4000 -p 4080:4080 --name mldonkey -d mldonkey:latest
