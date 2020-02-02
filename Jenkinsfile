def HOSTNAME = "hostname"
pipeline {
    agent {
        docker {
            image 'fd5385c87db1'
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
