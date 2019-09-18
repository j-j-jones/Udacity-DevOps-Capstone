pipeline {
  agent any
  stages {
    stage('Kubernetes cluster') {
      steps {
        sh 'aws configure'
        withAWS(credentials: 'aws-static') {
          sh '''
          sudo eksctl create cluster           --name udacity-devops-capstone           --version 1.12           --region us-east-1
          --nodegroup-name standard--workers           --node-type t2.micro           --nodes 2           --nodes-min 1           --nodes-max 3           --node-ami auto
          '''
        }

      }
    }
  }
}