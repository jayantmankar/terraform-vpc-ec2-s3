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
            steps {
                echo 'Terraform Apply'
                sh 'terraform apply --auto-approve'
            }
        }
         stage('Terraform destroy') {
            steps {
                echo 'Terraform Destry'
                sh 'terraform destroy -auto-approve'
            }
        }
	}
}