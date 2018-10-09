docker stop $(docker ps -a | grep sivasankarb9/bb-app | awk '{print $1}')
