#!/bin/bash

#updates rkhunter text data files
rkhunter --update

#Set the Security Baseline for your system
rkhunter --propupd

#checks for rootkits without keypress needed & shows only warnings
rkhunter --check --sk --rwo

#all logs are saved to /var/log/rkhunter.log
