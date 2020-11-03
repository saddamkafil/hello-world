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
	sh echo "hello"
#             sh "docker build -t saddamkafil/demo:1.7 /home/ec2-user/workspace/mypipeline/webapp/target"
        }
    }
    }
}
