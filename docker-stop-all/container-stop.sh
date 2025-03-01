#!/usr/bin/bash

cont_count=$(docker ps -q |wc -l)
if [ "$cont_count" -ne 0 ]; then
  echo "There are ${cont_count} container running would you like to stop em all? type Y or N"
  read ans
  if [ "${ans^^}" = "Y" ]; then
    echo "Stopping all the running containers..."
    docker stop $(docker ps -q)
  else
    echo "exiting..."
    exit 0
  fi
else
  echo "No Containers running"
fi
