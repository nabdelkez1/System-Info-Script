#!/bin/bash

# Clearing terminal
clear >$(tty)

# Variable declaration
USER_NAMES=$(last | awk 'NR>1{print $1}' | sort -u | sed '/wtmp/d' | awk 'NF' | paste -s -d,)
USER_COUNT=$(echo $USER_NAMES | tr ',' '\n' | wc -l)
LOG_DATE=$(last | tail -1 | awk '{print $3, $4, $5}')
OPERATING_SYS=$(hostnamectl | head -n -2 | tail -n -1 | sed 's/\://g' | tr -s " ")
USER_RUN_COUNT=$(last | grep -wc $LOGNAME)
CAPITAL_HOST=$(hostname | sed 's/./\u&/')

# Dash Top
printf -- '-%.0s' {1..90}; echo ""

# Output
echo This machine is $(hostname).
echo $USER_COUNT users have logged into $(hostname) since $LOG_DATE\;\ they are:
echo $USER_NAMES"."
echo $CAPITAL_HOST is at IP Address $(hostname -i) and is running $OPERATING_SYS.
echo You are $LOGNAME, and you have logged in $USER_RUN_COUNT times since $LOG_DATE.

# Dash Bottom
printf -- '-%.0s' {1..90}; echo ""