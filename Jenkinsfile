pipeline {
  agent any
  stages {
    
    stage('Apply Kubernetes Files') {
      steps {
          withKubeConfig([credentialsId: 'credentialsId', 
	  serverUrl: 'https://35.184.2.121',
          namespace: 'project1']) {
          sh "kubectl create -f httpd-storage.yaml"
          sh "kubectl create -f httpd-pod.yaml"
	  sh "kubectl create -f httpd-svc.yaml"
        }
      }
  }
}
}
