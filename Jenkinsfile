pipeline {
    agent any

    environment {
        // Docker credentials stored in Jenkins
        DOCKER_CREDS = credentials('docker-creds')
        DOCKER_IMAGE = "dockerprasanna27/food-app:latest"
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
                script {
                    // Check if Dockerfile exists
                    if (fileExists('Dockerfile')) {
                        sh "docker build -t $DOCKER_IMAGE ."
                    } else {
                        error "Dockerfile not found in repo root!"
                    }
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                sh "docker push $DOCKER_IMAGE"
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                script {
                    // Check if deployment YAML exists
                    if (fileExists('food-app.yaml')) {
                        sh "kubectl apply -f food-app.yaml"
                    } else {
                        error "food-app.yaml not found in repo root!"
                    }
                }
            }
        }
    }

    post {
        success {
            echo "✅ Deployment successful! Food-app is running in Kubernetes on port 8080."
        }
        failure {
            echo "❌ Deployment failed. Check logs for errors."
        }
    }
}
