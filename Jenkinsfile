pipeline{
    agent any
    tools {
       terraform 'terraform'
}
    stages{
        stage('Terraform Init'){
            steps{
                bat "terraform init"
            }
        }
        stage('Terraform Apply'){
            steps{
                bat "terraform apply -auto-approve"
            }
        }
    }

}
