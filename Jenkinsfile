node {
    checkout scm
    docker.withRegistry('localhost:5000') {
    docker.image('ubuntu-toolkit').inside {
    sh 'rpmbuild --version'
    }
    }
}
