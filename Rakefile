require_relative 'config/application'

Rails.application.load_tasks

task :default => :spec

task :runlocal do
  sh 'docker build -t mastermind .'
  sh 'docker-compose down && docker-compose up'
end
