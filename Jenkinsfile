 
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
            echo 'This will always run'  
        }
        success {
            mail bcc: '', body: 'project is successfully builded', from: '', replyTo: '', subject: 'project successfully finished.', to: 'erpujabaidya@gmail.com'
        }
        failure {
            mail bcc: '', body:"Failed stage name: ${Pipeline_Message}; This needs to be resolved... ${env.BUILD_URL} has result ${currentBuild.result}", from: '', replyTo: '', subject:"Status of pipeline: ${currentBuild.fullDisplayName}", to: 'erpujabaidya@gmail.com'
        }
    }  
    }
