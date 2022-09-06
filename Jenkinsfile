pipeline {
  agent any
    
  tools {nodejs "nodejs"}
    
  stages {

    stage('Install dependencies') {
      steps {
        sh 'npm install'
      }
    }
     
    stage('Build') {
      steps {
         sh 'npm run build'
      }
    } 
    stage('Test') {
      steps {
        sh 'npm run test'
      }
    }
    //to package the complete app
    stage('Package') {
      steps {
         sh 'ls -lrt'
         sh "pwd"
         sh "tar -zcf build.tar.gz build/"
      }
    }
    stage('Start the App'){
      steps{
        sh 'yarn start'
      }
    }    
  }
}
