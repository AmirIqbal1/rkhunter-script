#!/bin/bash

#updates rkhunter text data files
rkhunter --update

#checks for rootkits without keypress needed
rkhunter --check --sk

#all logs are saved to /var/log/rkhunter.log
