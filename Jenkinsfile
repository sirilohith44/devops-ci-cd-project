
pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                bat '"C:/Users/chand/Downloads/apache-maven-3.9.16-bin/apache-maven-3.9.16/bin/mvn.cmd" clean compile'
            }
        }

        stage('Test') {
            steps {
                bat '"C:/Users/chand/Downloads/apache-maven-3.9.16-bin/apache-maven-3.9.16/bin/mvn.cmd" test'
            }
        }

        stage('Package WAR') {
            steps {
                bat '"C:/Users/chand/Downloads/apache-maven-3.9.16-bin/apache-maven-3.9.16/bin/mvn.cmd" package'
            }
        }

        stage('Archive Artifact') {
            steps {
                archiveArtifacts artifacts: 'target/*.war',
                                 fingerprint: true
            }
        }

        stage('Deploy to Tomcat') {
            steps {
                bat '''
                copy /Y "target\\student-feedback-portal.war" "C:\\Users\\chand\\Downloads\\apache-tomcat-10.1.62-windows-x64\\apache-tomcat-10.1.62\\webapps\\student-feedback-portal.war"
                '''
            }
        }
    }
}
