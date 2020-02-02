node {
    checkout scm
    docker.withRegistry('http://localhost:5000') {
    docker.image('ubuntu-toolkit').inside {
    sh 'rpmbuild --version'
    }
    }
}
