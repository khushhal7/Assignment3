pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "khushhal1/simple-node-app"
    }

    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/khushhal7/Assignment3'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat "docker build -t ${env.DOCKER_IMAGE} ."
            }
        }

        stage('Push Docker Image to Docker Hub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                    bat '''
echo %PASSWORD% | docker login -u %USERNAME% --password-stdin
docker push %DOCKER_IMAGE%
'''
                }
            }
        }
    }
}
