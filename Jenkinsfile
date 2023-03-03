pipeline{
    agent any
    tools {
       terraform 'terraform'
}
    stages{
        stage('Terraform Init'){
            steps{
                 bat 'terraform init'
            }
        }
        stage('Terraform Destroy'){
            steps{
                bat 'terraform destroy'
            }
        }
    }

}
