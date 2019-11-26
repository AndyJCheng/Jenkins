pipeline{
    agent any
        stages{
        stage("A"){
            steps{
                git credentialsId: '', url: ''
                script{
                def dockerfile = 'Dockerfile'
                def customImage = docker.build("172.19.0.1:5000/php:${env.BUILD_ID}", "-f ${dockerfile} .")       
                //customImage.push()
                }
            }
        
        }
        stage("b"){
            environment{
               // set env var
            }
        }
    }
    post{
        always{
            echo "========always========"
            cleanWs()
        }
    }
    
}
