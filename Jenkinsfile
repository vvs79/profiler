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
    stage('Build') {
      steps {
        baSh "bundle install"
      }
    }
    // stage('Test') {
    //   when {
    //     not {
    //       branch 'docker/testing'
    //     }
    //   }
    //   steps {
    //     baSh 'bundle exec rake db:test:prepare'
    //     baSh 'bundle exec rake db:test:load'
    //     baSh 'bundle exec rake db:migrate'
    //     baSh 'bundle exec rspec'
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
    //       baSh 'bundle install'
    //       baSh 'rspec'
    //     }
    //   }
    // }
    stage('Run linters') {
      steps {
        baSh 'rubocop --format=json --out=rubocop-result.json'
      }
    }
    stage('Build docker'){
      when {
        branch 'master'
      }
      steps {
        sh "docker swarm init"
        sh "docker stack deploy rails_app -c docker-compose-prod.yml --with-registry-auth"
      }
    }
    stage("Deploy") {
      when {
        branch 'master'
      }
      steps {
        baSh "cap ${deployEnv(env.BRANCH_NAME)} deploy"
      }
    }
  }
  // environment {
  //   RAILS_ENV = 'test'
  //   DISABLE_DATABASE_ENVIRONMENT_CHECK = '1'
  //   DATABASE_URL = 'postgresql://jenkins:jenkins@localhost:5432/pod_test'
  // }
}
