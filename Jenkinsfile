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
        stage('Upload to Docker Hub') {
            steps {
                echo 'Deploying to Docker Hub Now..'
                //withAWS(region:'us-east-1',credentials:'aws-static')
                //{
                //    s3Upload(file: 'index.html', bucket: 'jenkins-udacity', path: '')
               // }
            }
        }
    }
}
