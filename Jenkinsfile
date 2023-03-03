pipeline{
    agent any
    tools {
       terraform 'terraform'
}
    stages{
        stage('Terraform Init'){
            steps{
                echo 'terraform init'
            }
        }
        stage('Terraform Apply'){
            steps{
                echo 'terraform apply -auto-approve'
            }
        }
    }

}
