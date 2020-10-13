# Rails 5 Starter Pack

## Description

This repo sets up a basic Rails 5 app using ruby 2.5 which can be run with docker-compose.

The starter pack includes:

* user auth with [devise](https://github.com/heartcombo/devise)
* tests with [rspec](https://github.com/rspec/rspec)
* background job processing with [sidekiq](https://github.com/mperham/sidekiq)

## Setup

First build with docker-compose:

```
docker-compose build
```

Next, setup the test and dev database:

```
docker-compose run web rake db:prepare
```

To run the application:

```
docker-compose up
```

At this point the application will be available at [http://localhost:3000](http://localhost:3000).

To run tests

```
docker-compose run web rspec
```
