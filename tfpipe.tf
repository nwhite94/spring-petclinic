// Jenkinsfile

	stage("checkout") {
		node {
			checkout scm
		}
	}

// Run terraform init
	stage("Provision") {
		node {
			sh "terraform init"
			sh "terraform plan -out=plan"
			//sh "terraform apply plan"
		}
	}
