env.APACHE_VER = "2.4.41"
env.OPENSSL_VER = "1.1.1c"
env.APR_VER = "1.7.0"
env.APRUTIL_VER = "1.6.1"

pipeline {
	agent {
  docker {
    image '9bdd9a53ce7b'
    reuseNode true
    args '-u root:sudo'
  }
}
    stages {
        stage("Compile Apache2441") {
            steps {
		sh "id"
		sh './test123test.sh'
                sh './build.sh'
            }
        }
    }
}
