File tokenfile = new File("/var/run/secrets/kubernetes.io/serviceaccount/token") 
File kubeconfig = new File('/var/jenkins_home/kubeconfig')
kubeconfig.text = kubeconfig.text.replace('{{TOKEN}}', tokenfile.text)
