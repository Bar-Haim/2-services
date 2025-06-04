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

        stage('Build Service 1') {
            when {
                expression { params.SERVICE == 'service1' }
            }
            steps {
                echo "⚙️ מריצה את service1 (app1.py)"
                sh 'python3 app1.py'
            }
        }

        stage('Build Service 2') {
            when {
                expression { params.SERVICE == 'service2' }
            }
            steps {
                echo "⚙️ מריצה את service2 (app2.py)"
                sh 'python3 app2.py'
            }
        }
    }
}
