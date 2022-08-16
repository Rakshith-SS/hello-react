pipeline{
    agent any

    stages{
        stage("react-deploy"){
            input{
                message "Ready to deploy"
                ok "Yes"
                parameters{
                    choice(choices: ["hello-react"], name:"hello-react")
                    }
                }
            steps{
                sh './scripts/changes.sh ${hello-react}'
                }
        }

    }
}
