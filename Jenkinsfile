pipeline {
  agent any
  stages {
    stage('Prepare') {
      steps {
        cleanWs()
        checkout scm
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
        sh 'mvn test'
        junit 'target/surefire-reports/*.xml'
      }
    }
  }
}
