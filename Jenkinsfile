pipeline {
    agent any
    tools { 
      maven 'MAVEN_HOME' 
      jdk 'JAVA_HOME' 
    }
    stages {
        stage('git repo & clean') {
            steps {
                bat "rmdir  /s /q spring-jenkins-docker-integration"
                bat "git clone https://github.com/VasuDanapana/spring-jenkins-docker-integration.git"
                bat "mvn clean -f spring-jenkins-docker-integration"
            }
        }
        stage('install') {
            steps {
                bat "mvn install -f spring-jenkins-docker-integration"
            }
        }
        stage('test') {
            steps {
                bat "mvn test -f spring-jenkins-docker-integration"
            }
        }
        stage('package') {
            steps {
                bat "mvn package -f spring-jenkins-docker-integration"
            }
        }
    }
}
