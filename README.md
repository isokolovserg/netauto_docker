# netauto_docker
Docker container with tools necessary for network automation (Python, Ansible, netmiko, Napalm, etc) 

1. docker build -f ./Dockerfile -t netauto .
2. docker run -dit --name netauto_container netauto /bin/bash
