pipeline {
    agent {
        docker { image 'ubuntu_toolkit' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'rpmbuild -v'
            }
        }
    }
}
