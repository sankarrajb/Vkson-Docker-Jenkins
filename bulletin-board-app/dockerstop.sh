docker ps -a | awk '{ print $1,$2 }' | grep sivasankarb9/bb-app | awk '{print $1 }' | xargs -I {} docker rm {}
