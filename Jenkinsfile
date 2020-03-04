pipeline{
 agent any 
 stages{
  stage('SCM'){
    steps {
      git 'https://github.com/thunikipatla/deployment_auto_scripts.git'
    }
  }
  stage('Copy-Artifact-upstream'){
    steps{
      copyArtifacts filter: 'webapp/target/openmrs.war', fingerprintArtifacts: true, projectName: 'openmrs-build'
    }
  }
  stage('Deploy'){
  steps{
    sh ''' ansible-playbook deploy.yml '''
  }
  }
 }
}
