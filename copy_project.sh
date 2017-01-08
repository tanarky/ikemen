#!/bin/sh

cp .gitignore .
cp .rspec .
cp .ruby-version .
cp Bowerfile .
cp Gemfile .
cp Gemfile.lock .
cp LICENSE .
cp README.md .
cp Rakefile .
cp cp.sh .
cp env.development .
cp config.ru .

cp -r app .
cp -r bin .
cp -r config .
cp -r db .
cp -r lib .
cp -r log .
cp -r public .
cp -r spec .
cp -r tmp .
cp -r vendor .

bundle install
bundle exec rake bower:install
bundle exec rake db:create
bundle exec rake db:migrate

