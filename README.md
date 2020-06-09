# AdsBoard
Microservice AdsBoard

Training application for a course on microservice architecture.

Sinatra-based API service for create/get Ads

## Install

* bundle install
* cp config/database.example.yml config/database.yml
* Setting config database.yml
* rake db:create db:migrate
* rackup
* open localhost:9292/api/v1/ads

## Use

**Return collection ads**

get /api/v1/ads

**Write Ad to DB** 

post /api/v1/ads, with params { title: 'Car', description: 'Cool Description for Car', city: 'City', user_id: 1 }

