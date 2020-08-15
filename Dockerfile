#Use an official Python runtime as a parent image
FROM library/python

#Set the working dir to /install
WORKDIR /install

#Copy the current directory contents into the container to /install
ADD . /install

#Install additional packages
RUN pip install --trusted-host pypi.python.org -r requirements.txt
RUN git clone https://github.com/networktocode/ntc-templates.git
RUN pip install -e ntc-templates/
RUN echo "export NET_TEXTFSM=/install/ntc-templates/templates" >> ~/.bashrc
RUN apt-get update
RUN apt-get -y install nmap
RUN apt-get -y install vim

#Set new default WORKDIR
WORKDIR /projects
