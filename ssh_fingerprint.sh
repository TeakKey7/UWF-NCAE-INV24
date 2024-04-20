#!/bin/bash
ssh-keygen -t ed25519 -N '' -f /etc/ssh/ssh_host_ed25519_key <<< y
ssh-keygen -t ecdsa -N '' -f /etc/ssh/ssh_host_ecdsa_key <<< y
ssh-keygen -t rsa -N '' -f /etc/ssh/ssh_host_rsa_key <<< y
