#!/bin/bash

ansible-playbook -i hosts.ini playbook.yml --tags "run"