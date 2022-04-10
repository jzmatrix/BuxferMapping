#!/bin/bash

# Copy config files
cp /config-ssh/ssh.public /root/.ssh/id_rsa.pub
cp /config-ssh/ssh.private /root/.ssh/id_rsa
chmod 600 /root/.ssh/id_rsa


# Start SSHd daemon holder (Not used to SSH in to container, but to hold PID 1 when haproxy reloads)
/usr/sbin/sshd -D