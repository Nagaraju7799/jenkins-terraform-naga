pipeline{
    agent any
    tools {
       terraform 'terraform'
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
