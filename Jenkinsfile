pipeline {
  agent any
  stages {
    stage('Kubernetes Create Cluster') {
      steps {
        sh 'aws iam get-user'
        withAWS(region: 'us-east-1', credentials: 'aws-key') {
          sh '''
          sudo eksctl create cluster           --name=udacity-devops-capstone-b          --version=1.10           --region=us-east-1           --zones=us-east-1a,us-east-1b,us-east-1c
          --nodegroup-name=standard--workers           --node-type=t2.micro           --nodes=2           --nodes-min=1           --nodes-max=3           --node-ami=auto
          '''
        }

      }
    }
    
    
   stage('Kubernetes Update Cluster') {
      steps {
        withAWS(region: 'us-east-1', credentials: 'aws-key') {
          sh 'aws eks --region us-east-1 update-kubeconfig --name udacity-devops-capstone-b'
        }
      }
    }
    
    
  }
}
