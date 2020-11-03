pipeline
{
    agent {
  label 'slave'
    }
    stages
    {
        stage('checkin code')
        {
            steps {
                git 'https://github.com/saddamkafil/hello-world.git'
            }
        }
         stage(" BUILD using maven"){
                steps{
                script {
                  def mvnhome = tool name: 'M2_HOME', type: 'maven'
                  sh "${mvnhome}/bin/mvn --version"
                  sh "${mvnhome}/bin/mvn clean package"
                }
                }
            }
        stage('build container')
        {
        steps
	{
	echo "hello"
	docker build -t saddamkafil/demo:1.10 .
        }
    }
    }
}
