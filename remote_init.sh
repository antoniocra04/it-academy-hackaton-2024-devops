#!/bin/bash

ansible-playbook -i hosts.ini playbook.yml --skip-tags "stop"