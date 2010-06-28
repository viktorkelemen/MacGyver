#!/bin/bash
# unix equivalent
# find .  -exec grep -q $1 '{}' \; -print
mdfind -onlyin . $1 