pipeline {
  agent any
  stages {
    stage('Lining Blue and Green HTML') {
      steps {
        echo 'Linting Now...'
        sh 'hostname'
        sh 'tidy -q -e **/*.html'
      }
    }
    stage('Build Blue Image') {
      steps {
        sh 'cd blue'
        sh 'docker_build.sh'
      }
    }
    stage('Read YAML File') {
      steps {
        echo 'Reading YAML File Complete'
      }
    }
  }
}
