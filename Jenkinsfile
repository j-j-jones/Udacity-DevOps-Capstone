environment{
  def AWS_ROLE = "arn:aws:iam::724427472536:role/eksctl-udacity-devops-capstone-cluster-ServiceRole-1AJR0PR7FC5BK" // AWS role used to create EC2 infrastructure (instances, DNS entries...)  
}
pipeline {
  agent any
  stages {
    stage('Kubernetes cluster') {
      steps {
        withAWS(region: 'us-east-1', role: '${AWS_ROLE}', credentials: 'aws-key') {
          sh '''
          sudo eksctl create cluster           --name udacity-devops-capstone           --version 1.10           --region us-east-1
          --nodegroup-name standard--workers           --node-type t2.micro           --nodes 2           --nodes-min 1           --nodes-max 3           --node-ami auto
          '''
        }

      }
    }
  }
}
