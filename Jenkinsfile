pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Building...'
      }
    }
    stage('Test') {
      steps {
        echo 'Testing..'
      }
    }
    stage('Lint HTML') {
      steps {
        echo 'Linting Now...'
        sh 'hostname'
        sh 'tidy -q -e *.html'
      }
    }
    stage('Uploading Docker Image') {
      steps {
        echo 'Uploading image to Docker Hub..'
        // 
        // 
        }

      }
    }
  }
}
