# API - LyricBunny
The API for the LyricBunny React app. 

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

What things you need to install the software and how to install them

```
Ruby - 2.5.3
Rails - 5.2.3
Bundler - ^2.0
Postgresql - '>= 0.18', '< 2.0'
```

### Installing

A step by step series of examples that tell you how to get a development env running

Install dependencies

```
bundle install
```

Create Database & Migrate
```
rake db:create && rake db:migrate 
```

Start the local server

```
rails s
```

Verify that your API is working by visiting
```
http://localhost:3001/popular_songs
```
If you recieve a response in `JSON` form, your DB is working as it should.


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
  ```
end
