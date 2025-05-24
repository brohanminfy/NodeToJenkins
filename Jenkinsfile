pipeline{
    agent any
    environment{
        Image_name = "rohan-node-app"
        Container_name = "rohan-container"
        Port = '3000'
    }
    stages{
        stage("Cloning Repository"){
            steps{
                git branch:'main' , url : 'https://github.com/brohanminfy/NodeToJenkins.git'
            }
        }
        stage("Build Docker Image"){
            steps{
                script{
                dockerImage = docker.build("${Image_name}")

                }
            }
        }
        stage("Run Docker File"){
            steps{
                script{
                    sh "docker rm -f ${CONTAINER_NAME} || true"
                    sh "docker run -d -p 3000:${Port} --name ${Container_name} ${Image_name}" 
                }
            }
        }
    }
}
