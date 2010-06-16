#!/bin/bash

# process that caused the file change
sudo fslogger | awk '/pid.*=.*\(.*\)/ { print $4$5 }'