pipeline{
    agent any
    stages {
        stage("SCM checkout") {
            steps {
                checkout scm
            }
        }
        
        stage("Build") {
            steps {
                sh 'mvn clean package'
                sh 'java -jar my-maven-tom.jar'
            }
        }

        stage("Test") {
            steps {
                sh 'mvn test'
            }
        }
    }
}