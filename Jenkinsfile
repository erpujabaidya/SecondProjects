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
          stage('Deploy - Production') {
            steps {
                sh "cp /var/lib/jenkins/workspace/puja_spring/target/*.war /opt/tomcat/webapps/"
            }
        }

       

    }

 

    

    post {

    always {

       mail to: 'erpujabaidya@gmail.com',

          subject: "Status of pipeline: ${currentBuild.fullDisplayName}",

          body: "${env.BUILD_URL} has result ${currentBuild.result}"

    }

  }
}
