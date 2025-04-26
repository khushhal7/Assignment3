pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'khushhal1/simple-node-app' // Your DockerHub image name
    }

    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/khushhal7/Assignment3'
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
                echo %PASSWORD% > password.txt
                docker login -u %USERNAME% --password-stdin < password.txt
                docker push %DOCKER_IMAGE%
                del password.txt
            """
        }
    }
}

    }
}
