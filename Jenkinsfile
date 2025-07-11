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
        stage('App Four') {
            steps {
                echo 'Freefire'
            }
        }
        stage('App Five') {
            steps {
                echo 'Carrom'
            }
        }
        stage('App Six') {
            steps {
                echo 'Instagram'
            }
        }
        stage('App Seven') {
            steps {
                echo 'Facebook'
            }
        }
        stage('App Eight') {
            steps {
                echo 'Goodle Drive'
            }
        }
        stage('App Nine') {
            steps {
                echo 'Google Photos'
            }
        }
        stage('App Ten') {
            steps {
                echo 'Youtube'
            }
        }
        stage('App Eleven') {
            steps {
                echo 'Amazon prime video'
            }
        }
        stage('App Tweleve') {
            steps {
                echo 'Amazon Music'
            }
        }
        stage('App Thirteen') {
            steps {
                echo 'Spotify'
            }
        }
        stage('App Fourteen') {
            steps {
                echo 'Phonepey'
            }
        }
        stage('App Fifteen') {
            steps {
                echo 'Googlepay'
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
