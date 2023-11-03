pipeline {
    agent any
    stages {
        stage("Build with Maven") {
            steps {
                sh 'docker-compose build'
            }
        }

        stage("Deploy with Docker Compose") {
            steps {
                sh 'docker-compose up -d'
            }
        }

        stage("Test") {
            steps {
                sh 'mvn test'
            }
        }
    }
}
