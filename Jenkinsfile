def deployEnv(branch){
  if(branch == 'master'){
    return 'production'
  }else{
    return branch
  }
}

pipeline {
  agent any
  stages {
    // stage('Build') {
    //   steps {
    //     sh "bundle install"
    //   }
    // }
    // stage('Test') {
    //   when {
    //     not {
    //       branch 'docker/testing'
    //     }
    //   }
    //   steps {
    //     sh 'bundle exec rake db:test:prepare'
    //     sh 'bundle exec rake db:test:load'
    //     sh 'bundle exec rake db:migrate'
    //     sh 'bundle exec rspec'
    //   }
    // }
    // stage('Test Surveyor') {
    //   when {
    //     not {
    //       branch 'docker/testing'
    //     }
    //   }
    //   steps {
    //     dir(path: 'vendor/plugins/surveyor/') {
    //       sh 'bundle install'
    //       sh 'rspec'
    //     }
    //   }
    // }
    // stage('Run linters') {
    //   steps {
    //     baSh 'rubocop --format=json --out=rubocop-result.json'
    //   }
    // }
    stage('Build docker'){
      when {
        branch 'master'
      }
      steps {
        // sh "docker swarm leave -f"
        sh "docker build -t rails_app ."
        sh "docker swarm init"
        sh "docker stack deploy rails_app -c docker-compose-prod.yml --with-registry-auth"
      }
    }
    stage("Deploy") {
      when {
        branch 'master'
      }
      steps {
        // sh "cap ${deployEnv(env.BRANCH_NAME)} deploy"
        sh "bundle exec cap production deploy"
      }
    }
  }
}
