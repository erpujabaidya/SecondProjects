 
 node{

stage('SCM Checkout'){
git 'https://github.com/erpujabaidya/SecondProjects.git'
}
stage('Compile-Package-Create-war-file'){

def mvnHome= tool name: 'Maven101', type: 'maven'
sh "${mvnHome}/bin/mvn package"
}


post 
    {  
        always 
        {  
          
      
            mail to: 'erpujabaidya@gmail.com',

          subject: "Status of pipeline: ${currentBuild.fullDisplayName}",

          body: "${env.BUILD_URL} has result ${currentBuild.result}"
    }


}
}
