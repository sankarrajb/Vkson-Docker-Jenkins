pipeline {
  agent none
  stages {
    stage('Docker Build') {
      agent { label 'Jenkins' }
      steps {
        sh 'sudo docker build -t vikson36/bb-app:${BUILD_NUMBER} ${WORKSPACE}/bulletin-board-app'
      }
    }
	  
    stage('Docker Push') {
      agent { label 'Jenkins' }
      steps {
        sh 'sudo docker push vikson36/bb-app:${BUILD_NUMBER}'
      }
    }
   
    stage('Docker pull') {
      agent { label 'dockerDev' }
      steps {
	
        sh 'sudo docker pull vikson36/bb-app:${BUILD_NUMBER}'
      }
    }
	  
    stage('Docker Stop') {
      agent { label 'dockerDev' }
      steps {
	sh 'sudo chmod 777 ${WORKSPACE}/bulletin-board-app/dockerstop.sh'
        sh ('sudo ${WORKSPACE}/bulletin-board-app/dockerstop.sh')
      }
    }
	  
   stage('Docker run') {
      agent { label 'dockerDev' }
      steps {
        sh 'sudo docker container run --detach --publish 8080:8080 vikson36/bb-app:${BUILD_NUMBER}'
      }
    }
	  
	  
}
	
}
