sudo docker ps -a | grep vikson36/bb-app |  awk '{print $1}'  | xargs docker stop
