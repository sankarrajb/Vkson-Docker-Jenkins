sudo docker ps -a | grep sivasankarb9/bb-app | awk '{print $1}' | xargs docker stop{}
