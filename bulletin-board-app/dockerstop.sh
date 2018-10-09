docker ps | grep centos:6 | awk '{print $1}' | xargs docker stop
