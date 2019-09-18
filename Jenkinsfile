pipeline {
  agent any
  stages {
    stage('Kubernetes cluster') {
      steps {
        echo 'Creating Now...'
        sh 'hostname'
        sh 'tidy -q -e **/*.html'
      }
    }
    stage('Create Conf File Cluster') {
      steps {
        dir(path: 'blue') {
          echo 'Moved to Blue Folder'
          sh 'ls -a'
          sh './docker_run.sh'
        }

      }
    }
    
  }
}
