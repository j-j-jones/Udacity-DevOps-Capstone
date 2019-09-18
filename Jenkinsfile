pipeline {
  agent any
  stages {
    stage('Kubernetes cluster') {
      steps {
        withAWS(credentials: 'aws-static', region: 'us-east-1') {
          sh '''
          eksctl create cluster \
          --name udacity-devops-capstone \
          --version 1.13 \
          --region us-east-1
          --nodegroup-name standard--workers \
          --node-type t2.micro \
          --nodes 2 \
          --nodes-min 1 \
          --nodes-max 3 \
          --node-ami auto
        }
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
