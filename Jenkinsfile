pipeline {
    agent any

    // environment {
    //     APP_NAME = "nodejs-app"
    //     DOCKER_IMAGE = "your-dockerhub-username/nodejs-app"
    //     EC2_USER = "ubuntu"  // Change if using Amazon Linux
    //     EC2_HOST = "your-ec2-public-ip"
    //     SSH_KEY = credentials('EC2-SSH-KEY')
    // }

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/bgsharath/jenkins_docker_ec2_node.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }

        stage('Run Tests') {
            steps {
                sh 'npm test'
            }
        }

        // stage('Build Docker Image') {
        //     steps {
        //         sh 'docker build -t $DOCKER_IMAGE .'
        //     }
        // }

        // stage('Push Docker Image to DockerHub') {
        //     steps {
        //         withDockerRegistry([credentialsId: 'DOCKERHUB-CREDENTIALS', url: '']) {
        //             sh 'docker push $DOCKER_IMAGE'
        //         }
        //     }
        // }

        // stage('Deploy to EC2') {
        //     steps {
        //         sh '''
        //         ssh -i $SSH_KEY $EC2_USER@$EC2_HOST <<EOF
        //             docker pull $DOCKER_IMAGE
        //             docker stop nodejs-app || true
        //             docker rm nodejs-app || true
        //             docker run -d -p 3000:3000 --name nodejs-app $DOCKER_IMAGE
        //         EOF
        //         '''
        //     }
        // }
    }
}
