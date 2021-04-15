pipeline {
  agent any
    
  tools {nodejs "nodejs"}
    
  stages {

    stage('Install dependencies') {
      steps {
        sh 'yarn install'
      }
    }
     
    stage('Build') {
      steps {
         sh 'yarn run build'
      }
    }  
    stage('Package') {
      steps {
         sh 'ls -lrt'
         sh "pwd"
         sh "tar -zcf build.tar.gz build/"
      }
    }    
  }
}