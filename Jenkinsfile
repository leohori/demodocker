pipeline {
  environment {
    dockerImage = ''
    registry = "leo_hori/demodocker-jenkins"
    registryCredential = 'swr-credentials-argentina'
  }
  
  agent any
  
stages {
    
    stage('Building image') {
      steps{
        script {
            dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
    
stage('Send to SWR'){
      steps{
        script {
          docker.withRegistry('https://swr.sa-argentina-1.myhuaweicloud.com', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }

stage('Deploy to Kubernetes'){
		steps{
		  script {
			kubernetesDeploy(configs: '*.yaml', dockerCredentials: [[credentialsId: 'swr-credentials-argentina', url: 'https://swr.sa-argentina-1.myhuaweicloud.com']], kubeConfig: [path: ''],kubeconfigId: 'kubernetes-credentials-argentina', secretName: '', ssh: [sshCredentialsId: '*', sshServer: ''], textCredentials: [certificateAuthorityData: '', clientCertificateData: '', clientKeyData: '', serverUrl: 'https://'])
		  }
	    }
	 }
	 

  }
}
