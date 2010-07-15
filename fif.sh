#!/bin/bash

# it expects a regular expression
find .  -exec grep -q $1 '{}' \; -print