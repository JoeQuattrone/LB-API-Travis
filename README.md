# API - LyricBunny  [![Build Status](https://travis-ci.org/JoeQuattrone/LB-API-Travis.svg?branch=master)](https://travis-ci.org/JoeQuattrone/LB-API-Travis)
The API for the LyricBunny React app.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites
```
Ruby - 2.5.3
Rails - 5.2.3
Bundler - ^2.0
Postgresql - '>= 0.18', '< 2.0'
```

### Installing
Install dependencies

```
bundle install
```
Run Postgresql with the PG App or start the server manually with:
```
pg_ctl -D /usr/local/var/postgres start
```
Create Database & Migrate
```
rake db:create && rake db:migrate
```
Seed the Database for testing purposes
```
rake db:seed RAILS_ENV=test
```
Start the Rails server
```
rails s
```
Verify that your API is working by visiting:
```
http://localhost:3001/popular_songs
```
If you receive a response in `JSON` form, your DB is working as it should.

## Next Step
Return to [LB-Client-Travis](https://github.com/JoeQuattrone/LB-Client-Travis) and continue the instructions.

## Running the tests
To run tests make sure you have created the test database and have seeded it outlined in the steps above.

Run tests
```
rake test
```

### Break down into unit tests
These tests utilize the built-in Rails test framework, Minitest.

A simple unit test
```
test "trending_songs returns the 3 most liked songs" do
  assert_equal 3, Song.trending_songs.length
end
```
This test verifies that the class method *trending_songs* for the Song class will return an array with a length of 3.

## Deployment
To deploy configure `config/initializers/cors.rb` to allow API requests to be made from the LyricBunny-React frontend.

Example:
```
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:3000'

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
```
Change to:
```
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://yourwebsitename.com'

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
 end
 ```
