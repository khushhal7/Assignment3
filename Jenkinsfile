pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'khushhal1/simple-node-app' // Replace with your Docker Hub username
    }

    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/khushhal7/Assignment3' // Change to your repo
            }
        }
        
        stage('Build Docker Image') {
            steps {
                bat 'docker build -t %DOCKER_IMAGE% .'
            }
        }
        
        stage('Push Docker Image to Docker Hub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub-creds', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                    bat """
                         docker login -u %USERNAME% -p %PASSWORD%
                    """
                }
            }
        }
    }
}
