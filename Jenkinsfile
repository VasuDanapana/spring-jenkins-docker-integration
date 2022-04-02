pipeline {
    agent any
    stages {
        stage('git repo & clean') {
            steps {
                bat "rmdir  /s /q spring-jenkins-docker-integration"
                bat "git clone https://github.com/VasuDanapana/spring-jenkins-docker-integration.git"
                bat "clean -f spring-jenkins-docker-integration"
            }
        }
        stage('install') {
            steps {
                bat "install -f spring-jenkins-docker-integration"
            }
        }
        stage('test') {
            steps {
                bat "test -f spring-jenkins-docker-integration"
            }
        }
        stage('package') {
            steps {
                bat "package -f spring-jenkins-docker-integration"
            }
        }
    }
}
