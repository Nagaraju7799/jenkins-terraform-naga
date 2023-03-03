pipeline{
    agent any
    tools {
       terraform 'terraform-11'
}
    stages{
        stage('Terraform Init'){
            steps{
                sh 'terraform init'
            }
        }
        stage('Terraform Apply'){
            steps{
                sh 'terraform apply -auto-approve'
            }
        }
    }

}
