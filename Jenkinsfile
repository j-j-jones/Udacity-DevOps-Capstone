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
        dir(path: 'blue') {
          echo 'Moved to Blue Folder'
          sh 'ls -a'
          sh 'sudo -S ./docker_run.sh'
        }

      }
    }
    stage('Build Green Image') {
      steps {
        dir(path: 'green') {
          echo 'Moved to Green Folder'
          sh 'ls -a'
          sh 'sudo ./docker_run.sh'
        }

      }
    }
    stage('Read YAML File') {
      steps {
        echo 'Reading YAML File Complete'
      }
    }
  }
}