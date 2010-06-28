#!/bin/bash
find .  -exec grep -q $1 '{}' \; -print
