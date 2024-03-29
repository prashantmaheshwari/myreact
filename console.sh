#!/bin/bash

# Redirect output to stderr.
exec 1>&2
# enable user input
exec < /dev/tty

LRED='\033[1;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # NO COLOUR

confirm () {  
  printf "${YELLOW}"
  read -rp "Continue with commit? (y/n) " yn
  printf "${NC}"
  if test "$yn" == "y" || test "$yn" == "Y"
  then
    printf "\n" # CONTINUE
  else    
    exit 1
  fi
}

no_console () {
  consoleRegexp='^[^-].*console.log'
  filenameRegexp='^[^-].*console.log(\|^+++'

  if test "$(git diff --cached | grep -c "$consoleRegexp")" != 0
  then
    git diff --cached | grep -ne "$filenameRegexp" | grep -B1 "$consoleRegexp"
    printf "\nSome files include ${LRED}console.log${NC}.\n"
    confirm
  fi
}

### RUN THROUGH CHECKS AND STOP IF THERE IS A PROBLEM
no_console

printf "${GREEN}Proceeding with commit...${NC}\n"
