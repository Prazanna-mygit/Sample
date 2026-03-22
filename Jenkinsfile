pipeline {
    agent any

    environment {
        // DockerHub credentials stored in Jenkins
        DOCKER_CREDS = credentials('docker-creds')
    }

    stages {

        stage('Checkout') {
            steps {
                git url: 'https://github.com/Prazanna-mygit/Sample.git',
                    credentialsId: 'git-creds'
            }
        }

        stage('Docker Login') {
            steps {
                sh '''
                    echo $DOCKER_CREDS_PSW | docker login -u $DOCKER_CREDS_USR --password-stdin
                '''
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t dockerprasanna27/food-app:latest .'
            }
        }

        stage('Push Image') {
            steps {
                sh 'docker push dockerprasanna27/food-app:latest'
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                sh 'kubectl apply -f food-app.yaml'
            }
        }
    }

    post {
        success {
            echo "Deployment successful! Food-app is running in Kubernetes."
        }
        failure {
            echo "Deployment failed. Check logs for errors."
        }
        always {
            // Logout from Docker after pipeline completes (good practice)
            sh 'docker logout || true'
        }
    }
}
