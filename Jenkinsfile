node
{
  stage('Preparation')
  {
      //def scmVars = checkout([$class: 'GitSCM', branches: [[name: '*/R1.0']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/ttaeschn/kube']]])
      //def commitHash = scmVars.GIT_COMMIT
      sh ('env')
      shortCommit = sh(returnStdout: true, script: "git log -n 1 --pretty=format:'%h'").trim()
      echo(shortCommit)
      echo(scmVars.GIT_BRANCH)
      //def commitBranch = scmVars.GIT_BRANCH
      def String[] str = (scmVars.GIT_BRANCH).split('/');              
      def commitBranch = str[str.size()-1];
          if (commitBranch == "R1.0") {   
              echo(env.BRANCH_NAME)
            echo(commitHash)
    } else {                                   
        echo(commitBranch)
    }    
    echo(env.BRANCH_NAME)
    echo(commitHash)
    echo(commitBranch)
    env.GIT_COMMIT=commitHash
   // googleCloudBuild credentialsId: 'tt-jenkins', request: file('gcbuilder.yaml'), source: local('.'), substitutions: [_TT_BRANCH: commitBranch, _TT_COMMIT: commitHash ] 
    echo(commitHash)    
  }
   stage('Deploy') 
  {
 //kubernetesDeploy configs: 'deployment.yaml', kubeConfig: [path: ''], kubeconfigId: 'kubeconfig', secretName: '', ssh: [sshCredentialsId: '*', sshServer: ''], textCredentials: [certificateAuthorityData: '', clientCertificateData: '', clientKeyData: '', serverUrl: 'https://']
  }
}
