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
                sh 'java -jar /target/my-maven-tom-1.0-SNAPSHOT.jar'
            }
        }

        stage("Test") {
            steps {
                sh 'mvn test'
            }
        }
    }
}
