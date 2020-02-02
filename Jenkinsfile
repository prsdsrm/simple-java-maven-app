pipeline {
    agent {
        docker {
            image 'fd5385c87db1'
            args '-p 8989:8989' 
         }
    }
    stages {
        stage("install") {
            steps {
                sh './test123test.sh'
            }
        }
    }
}
