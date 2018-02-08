web: bundle exec puma -C config/puma.rb -p $PORT
worker: bundle exec sidekiq -v -C config/sidekiq.yml
release: bundle exec rails db:migrate