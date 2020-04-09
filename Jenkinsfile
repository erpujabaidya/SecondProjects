  node{

stage('SCM Checkout'){
git 'https://github.com/erpujabaidya/SecondProjects.git'
}
stage('Compile-Package-Create-war-file'){
//Get maven home path
def mvnHome= tool name: 'Maven101', type: 'maven'
sh "${mvnHome}/bin/mvn package"
}
stage('Deploy to Tomcat'){
sh "cp /var/lib/jenkins/workspace/puja_spring/target/*.jar /opt/tomcat/webapps/"
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
