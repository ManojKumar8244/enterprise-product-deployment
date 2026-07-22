pipeline {
    agent any

    tools {
        jdk 'JDK21'
        maven 'Maven3'
    }

    environment {
        APP_NAME = "analytics-platform"
        IMAGE_TAG = "v1"
    }

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Application') {
            steps {
                dir('analytics-platform') {
                    sh 'mvn clean package -DskipTests'
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                dir('analytics-platform') {
                    sh 'docker build -t ${APP_NAME}:${IMAGE_TAG} .'
                }
            }
        }

        stage('Verify Docker Image') {
            steps {
                sh 'docker images'
            }
        }

    }

    post {

        success {
            echo 'CI Pipeline Completed Successfully'
        }

        failure {
            echo 'Pipeline Failed'
        }

    }
}
