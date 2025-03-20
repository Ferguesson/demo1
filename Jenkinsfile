pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'ferguesson/demo1'
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Ferguesson/demo1.git'
            }
        }
        
        stage('Build') {
            steps {
                sh 'mvn package'
            }
        }
        
        stage('Docker Build & Push') {
            steps {
                sh 'docker build -t $DOCKER_IMAGE .'
                sh 'docker push $DOCKER_IMAGE'
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                sh 'kubectl apply -f k8s/deployment.yaml'
            }
        }
    }
}
