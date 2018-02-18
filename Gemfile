source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.4.1"

gem "dotenv-rails", group: [:development, :test], require: "dotenv/rails-now"

gem "activeadmin",  "1.2.1"
gem "bootsnap",     "1.1.8", require: false
gem "coffee-rails", "4.2.2"
gem "devise",       "4.3.0"
gem "jbuilder",     "2.7.0"
gem "pg",           "1.0.0"
gem "puma",         "3.11.2"
gem "pundit",       "1.1.0"
gem "rails",        "5.2.0.rc1"
gem "rollbar",      "2.15.0"
gem "sass-rails",   "5.0.7"
gem "tag_columns",  "0.1.5"
gem "uglifier",     "4.1.5"
gem "webpacker",    "3.2.1"
gem "turbolinks",   "5.1.0"

group :development, :test do
  gem "awesome_print"
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "minitest-reporters"
  gem "pry"
  gem "pry-doc"
  gem "pry-nav"
  # gem "pry-rails"
  gem "pry-remote"
  gem "pry-stack_explorer"
  gem "rubocop", require: false
end

group :development do
  gem "annotate"
  gem "letter_opener"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "model_probe"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

group :test do
  gem "capybara", "~> 2.15"
  gem "chromedriver-helper"
  gem "mocha"
  gem "selenium-webdriver"
  gem "shoulda"
  gem "timecop"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]