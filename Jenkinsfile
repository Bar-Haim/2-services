pipeline {
    agent {
        docker {
            image 'python:3.12'
        }
    }
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
                    if (params.SERVICE == 'service1') {
                        echo "⚙️ מריצה את service1 (app1.py)"
                        sh 'python app1.py'
                    } else {
                        echo "⚙️ מריצה את service2 (app2.py)"
                        sh 'python app2.py'
                    }
                }
            }
        }
    }
}
