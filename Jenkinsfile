pipeline {
    agent any

    parameters {
        choice(name: 'SERVICE', choices: ['service1', 'service2'], description: 'בחרי את הסרוויס להרצה')
    }

    stages {
        stage('הצגת הבחירה') {
            steps {
                echo "💡 נבחר הסרוויס: ${params.SERVICE}"
            }
        }

        stage('הרצת סקריפט') {
            steps {
                script {
                    def scriptName = params.SERVICE == 'service1' ? 'app1.py' : 'app2.py'
                    echo "⚙️ מריצה את ${params.SERVICE} (${scriptName})"

                    // מריץ את הקוד בתוך קונטיינר עם פייתון
                    sh """
                    docker run --rm -v \$PWD:/app -w /app python:3.12 python ${scriptName}
                    """
                }
            }
        }
    }
}
