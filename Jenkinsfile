pipeline {
    agent any
     
    stages {
        stage ('checkout'){
            steps {
                git branch: 'dev', url: 'https://github.com/ishaqmdgcp/EC2.git'
            }
        }
		
      
     stage('TF Init&Plan') {
        steps {
          sh 'terraform init'
          sh 'terraform plan'
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
