 def Pipeline_Message
pipeline{

    agent any

    tools{

                maven 'Maven101'

            }

    stages{

        stage('Source'){

           steps{ 

               git 'https://github.com/erpujabaidya/SecondProjects.git'}

        }

        stage('Compile package'){

           

           steps{

               sh 'mvn clean package'

           } 

        }
          stage('Deploy - Production - Tomcat') {
            steps {
                sh "cp /var/lib/jenkins/workspace/puja_spring/target/*.war /opt/tomcat/webapps/"
            }
        }

       

    }

 

post 
    {  
        always 
        {  
            echo 'This will always run'  
        }
        success {
            mail bcc: '', body: 'project is successfully builded', from: '', replyTo: '', subject: 'project successfully finished.', to: 'erpujabaidya@gmail.com'
        }
        failure {
            mail bcc: '', body:' This needs to be resolved... ${env.BUILD_URL} has result ${currentBuild.result}", from: '', replyTo: '', subject:"Status of pipeline: ${currentBuild.fullDisplayName}", to: 'erpujabaidya@gmail.com'
        }
    }  

}

