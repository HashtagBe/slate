#!/usr/bin/env bash
bundle exec middleman build --clean
cp -r build/* ../be-api/public/
mv ../be-api/public/index.html ../be-api/public/docs.html
