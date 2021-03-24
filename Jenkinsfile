pipeline {
  environment {
    dockerImage = ''
    registry = "leo_hori/demo-jenkins-github"
    registryCredential = 'swr-credentials-argentina'
  }
  
  agent any
  
stages {
    
    stage('Build Docker Image') {
      steps{
        script {
            dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
    
stage('Send Image to SWR Repo'){
      steps{
        script {
          docker.withRegistry('https://swr.sa-argentina-1.myhuaweicloud.com', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }

stage('Deploy Image to Kubernetes'){
		steps{
		  script {
			kubernetesDeploy(configs: '*.yaml', dockerCredentials: [[credentialsId: 'swr-credentials-argentina', url: 'https://swr.sa-argentina-1.myhuaweicloud.com']], kubeConfig: [path: ''],kubeconfigId: 'kubernetes-credentials-argentina', secretName: '', ssh: [sshCredentialsId: '*', sshServer: ''], textCredentials: [certificateAuthorityData: '', clientCertificateData: '', clientKeyData: '', serverUrl: 'https://'])
		  }
	    }
	 }
	 

  }
}
