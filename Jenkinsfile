pipeline {
    agent any

    stages {
        stage('App one') {
            steps {
                echo 'HDFC'
            }
        }
        stage('App Two') {
            steps {
                echo 'Indian bank'
            }
        } 
        stage('App Three') {
            steps {
                echo 'Pubg'
            }
        }
    }
    post {
      always {
        emailext(
        to: 'prazdemoacc27@gmail.com',
        subject: '$DEFAULT_SUBJECT',
        body: '$DEFAULT_CONTENT',
        attachLog: true,
        mimeType: 'text/html'
      )
   }

 }

}
