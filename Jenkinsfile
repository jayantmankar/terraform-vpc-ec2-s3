pipeline {

    options {
        buildDiscarder(logRotator(numToKeepStr: '5', artifactNumToKeepStr: '5'))
    }

    agent any
        stage('Terraform Version') {
            steps {
                echo 'Terraform Initialization is In Progress!'
               
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
	}


