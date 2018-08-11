# README

This is a basic Rails API which will serve some test data for this example map application.

## Requirements

It's assumed your system has the following tools installed:
- Ruby (> 2.2)
- Rails (>2.5)
- PostgreSQL

## Setup

First clone the repo into a directory.

```bash
> mkdir lc_api && cd lc_api
> git clone https://github.com/koriner/lc_api.git .
```

To set up the app and database:

```bash
# creates and migrates the db
> rake db:create
> rake db:migrate

# seeds the db with example data
> rake db:seed
```

## Running the app

Run the server:
```bash
> rails s
```

Check it's working:

Visit `http://0.0.0.0:3001` in your browser. You should see the 'Welcome to Rails' homepage.

Now visit `http://0.0.0.0:3001/properties`. You should see some JSON output from the API.

