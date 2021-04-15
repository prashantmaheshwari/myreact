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
  }
}