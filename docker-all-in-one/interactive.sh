#!/usr//bin/bash
while true; do 
  echo "1) List all the running containers"
  echo "2) Stop the containers"
  echo "3) Start the container"
  echo "4) view logs"
  echo "5) Exit"
  read -p "chose the option" choice

  case $choice in 
    1) docker ps ;;
    2) cont_count=$(docker ps -q |wc -l) 
      if [ "$cont_count" -ne 0 ]; then
        echo "stopping containers...."
        docker stop $(docker ps -q)
      else
        echo "No containers to stop.."
      fi ;;
    3) cont_count=$(docker ps -aq -f status=exited | wc -l) 
      if [ "$cont_count" -ne 0 ]; then
         echo "starting container...."
         docker start $(docker ps -aq -f status=exited)
      else
        echo "no container to start"
      fi ;;
    4) echo "Enter container name to show logs"
      read name
      docker logs $name
      ;;
    5) exit 0
      ;;
  esac
done
