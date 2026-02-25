
pipeline {
    agent any
    tools {
        maven 'Maven'
    }
    stages {
        stage('Clonar repositorio') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/sebastianignaciosantillan/vehiculos-api.git'
            }
        }
        stage('Compilar proyecto') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }
        stage('Construir imagen Docker') {
            steps {
                sh 'docker build -t vehiculos-app .'
            }
        }
        stage('Desplegar contenedor') {
            steps {
                sh '''
                    docker stop vehiculos-container || true
                    docker rm vehiculos-container || true
                    docker run -d --name vehiculos-container --network host vehiculos-app
                '''
            }
        }
    }
}

