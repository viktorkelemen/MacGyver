#!/bin/bash
sudo fslogger | awk '/FSE_ARG_STRING/ { print $5 }'
