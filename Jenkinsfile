pipeline {

environment {
    registry = "jjjones/udacity-devops-capstone"
    registryCredential = 'dockerhub'
    dockerImage = ''
  }
 
agent any

    stages {
	
	   stage('Cloning Git') {
           steps {
               git 'https://github.com/j-j-jones/udacity-devops-capstone.git'
              }
        }
		
		stage('Lint HTML') {
            steps {
                echo 'Linting Now...'
                sh 'hostname'
                sh 'tidy -q -e *.html'
            }
        }
	
        stage('Build Docker Image') {
            steps {
                echo 'Building...'
				script {
                       docker.build registry + ":$BUILD_NUMBER"
                       }
                  }
        }
		
		stage('Deploy Image') {
           steps{
               script {
                       docker.withRegistry( '', registryCredential ) {
                       dockerImage.push()
                       }
                    }
	            }	
            }
		
               
		stage('Remove Unused docker image') {
            steps{
                sh "docker rmi $registry:$BUILD_NUMBER"
                 }
			}	 
    }
}
