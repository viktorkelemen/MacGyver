#!/bin/bash

# it accepts a regular expression
find .  -exec grep -q $1 '{}' \; -print