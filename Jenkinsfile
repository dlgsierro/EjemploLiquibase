pipeline {
  agent any
  stages {
    stage('Prepare') {
      steps {
        sh 'checkout scm'
        sh 'cleanWS()'
      }
    }
    stage('Build') {
      steps {
        sh 'mvn clean package'
        sh 'mvn liquibase:update'
      }
    }
    stage('Test') {
      steps {
        sh 'mvn test findbugs:findbugs'
      }
    }
  }
}