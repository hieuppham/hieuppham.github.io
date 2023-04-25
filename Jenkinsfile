pipeline {
    agent any

    environment {
        TAG = "hieuppham/demo-fe"
        DATE = new Date().format('dd.MM')
        CONTAINER = "demo-fe"
    }

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t ${TAG}:${DATE}-${BUILD_NUMBER} .'
            }
        }

        stage('Deploy') {
            steps {
                sh 'docker stop ${CONTAINER} | true'
                sh 'docker rm ${CONTAINER} | true'
                sh "docker rmi \$(docker images | grep \${TAG}) | true"
                sh 'docker run -d --name ${CONTAINER} -p 9090:80 ${TAG}:${DATE}-${BUILD_NUMBER}'
            }
        }
    }
}