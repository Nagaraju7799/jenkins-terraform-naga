pipeline{
    agent any
    tools {
       terraform 'terraform'
}
    stages{
        stage('Terraform Init'){
            steps{
                set +e sh "terraform init"
            }
        }
        stage('Terraform Apply'){
            steps{
                set +e sh "terraform apply -auto-approve"
            }
        }
    }

}
