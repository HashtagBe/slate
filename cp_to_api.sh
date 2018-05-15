#!/usr/bin/env bash
rvm use 2.3.1
bundle exec middleman build --clean
cp -r build/* ../be-api/public/
mv ../be-api/public/index.html ../be-api/public/docs.html
