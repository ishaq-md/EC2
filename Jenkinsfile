pipeline {
    agent any
     
    stages {
        stage ('checkout'){
            steps {
                git branch: 'dev', url: 'https://github.com/ishaqmdgcp/EC2.git'
            }
        }
		
      
     stage('Set Terraform path') {
            steps {
                script {
                    def tfHome = tool name: 'Terraform'
                    env.PATH = "${tfHome}:${env.PATH}"
                }
                sh 'terraform --version'               
               
            }
        }
        
      
         stage('Provision infrastructure') {
            steps {
                dir("") 
                {
                sh 'terraform init'
                sh 'terraform plan'
                sh 'terraform apply -auto-approve'
                             
             
            }
        }
        }
        
      
      
    }
}
