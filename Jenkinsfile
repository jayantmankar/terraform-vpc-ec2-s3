pipeline {

    options {
        buildDiscarder(logRotator(numToKeepStr: '5', artifactNumToKeepStr: '5'))
    }

    agent any
    
    environment {
        USER_CREDENTIALS = credentials('terraformuser')
    }
    stages {
        stage('Terraform Version') {
            steps {
                echo 'Terraform Initialization is In Progress!'
                sh 'terraform init -reconfigure'
            }
        }
        stage('Formate') {
            steps {
                echo 'Terraform Initialization is In Progress!'
                sh 'terraform fmt'
            }
        }  
        stage('Terraform Plan') {
            steps {
                echo 'Terraform Initialization is In Progress!'
                sh 'terraform plan'
            }
        }
        stage('Approval') {
            steps {
                echo 'Terraform Initialization is In Progress!'
               
            }
        }        
        stage('Terraform Apply') {
            // only execute stage if apply is desired
           when { expression { return env.Action == 'apply' } }
           steps {
               // query for user approval of plan
              input(message: 'Click "proceed" to approve the above Terraform Plan')
               // apply the plan if approved
              sh(
                   label:  'Terraform Apply',
                   script: 'terraform apply -auto-approve -input=false -no-color plan.tfplan'
                )
            }
        }
         stage('Terraform destroy') {
            steps {
                echo 'Terraform Apply'
                sh 'terraform destroy -auto-aprove'
            }
        }
	}
}