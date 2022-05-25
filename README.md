# Tribe Backend

> A rails backend for a service oriented application. A user can request and receieve data from endpoints for other users based on interests, location, and also user to user chatrooms. Endpoints include querying a single user, updating a users profile, a list of users based off location and interests. 

## Tribe Frontend

> To see the Frontend application on github for this project [click here](https://github.com/Tribe-Turing/fe_tribe
> 
> To visit the application on heroku [click here](https://fe-tribe.herokuapp.com/) 
## Design Principles: 
The design of this application relies on the facade design pattern. Here's a very high level overview: 
* A controller receives a request from the front end and intiates the creation of a facade, and passes it data(params, from JSON or query). 
* A facade is a ruby class that initializes a Service, and sends the service data to a PORO. 
* A service calls an external api enpoint and returns parsed JSON. 
* The parsed JSON is turned into a Ruby object through a PORO. 
* The object is serialized and sent to the route matching the controller action. 


# Getting Started

## Development setup
```ruby 2.7.4```
```rails 5.2.6```
## Gems
![pry v badge](https://img.shields.io/gem/v/pry?color=blue&label=pry)
![shoulda-matchers v badge](https://img.shields.io/gem/v/shoulda-matchers?label=shoulda-matchers)
![rspec v badge](https://img.shields.io/gem/v/rspec?color=orange&label=rspec)
![simplecov v badge](https://img.shields.io/gem/v/simplecov?color=green&label=simplecov)
![json-apiserializer](https://img.shields.io/badge/json-apiserializer-blue)
![faraday](https://img.shields.io/badge/faraday-red)
![vcr](https://img.shields.io/badge/vcr-orange)
![capybara](https://img.shields.io/badge/capybara-green)
![figaro](https://img.shields.io/badge/figaro-blue)
## Setup
1. clone this repository 
2. cd into 'be_tribe' directory 
3. run ```'bundle install' to install gems```
7. run ```rake db:{drop,create,migrate,seed} to prepare the database ```
8. run ```bundle exec rspec``` to run the test suite (run after api set up)
9. run ```rails s``` to launch the production environment
10. send requests to "https://localhost:5000". 

## Schema
![Screen Shot 2022-05-25 at 11 35 27 AM](https://user-images.githubusercontent.com/87387139/170327931-44e7fe82-c5fe-4fed-ab6c-6b10659c90bf.png)

## Get today & yesterdays horoscope and moon information
### GET  http://localhost:5000/api/v1/horoscopes/find?sign=leo
```
Response:

{
    "today_horoscope": {
        "current_date": "April 22, 2022",
        "description": "For the next three days, a certain urgent undertone will be automatically added to each and every encounter. Does that mean you'll be feeling unhappy? Hardly. Passionate, maybe -- so why waste time pouting?",
        "compatibility": "Sagittarius",
        "mood": "Energetic",
        "color": "Sky Blue",
        "lucky_number": "30",
        "lucky_time": "5am",
        "moon": "Grass Moon",
        "moon_phase": "Waning Gibbous"
    },
    "yesterday_horoscope": {
        "current_date": "April 21, 2022",
        "description": "Someone you've always thought of as 'just a friend' will be along shortly with a bold, brazen comment -- one you might not mind hearing at all. This won't be a typical day, but it will be memorable.",
        "compatibility": "Aries",
        "mood": "Productive",
        "color": "Silver",
        "lucky_number": "92",
        "lucky_time": "4pm",
        "moon": "Grass Moon",
        "moon_phase": "Waning Gibbous"
    }
}

```
## Create a user  
### POST http://localhost:5000/api/v1/users
```
JSON Raw Body: 

{ 
    "email": "test@gmail.com"
}

```
## Create a daily flow chart 
### POST http://localhost:5000/api/v1/users/daily_flow_chart?email=#{email}
```
JSON Raw Body: 

{ 
    "date": "Mon, 18 Apr 2022",
    "bloating": "true",
    "cramps": "false",
    "emotions": "I feel ok",
    "flow_status": "moderate"
}

```
## Edit a flow chart 
### PATCH http://localhost:5000/api/v1/users/daily_flow_chart?email=#{email}
```
JSON raw body:

{ 
    "date": "Mon, 18 Apr 2022",
    "bloating": "true",
    "cramps": "false",
    "emotions": "I feel ok",
    "flow_status": "moderate"
}
```
## Get a flow chart
### GET http://localhost:5000/api/v1/users/daily_flow_chart?email=#{email}&date=#{Date.today}
```

Response:

[
    {
        :id=>15,
        :date=>"2022-04-22",
        :bloating=>true,
        :cramps=>true,
        :emotions=>"Fill in",
        :flow_status=>"Light",
        :user_id=>8,
        :created_at=>"2022-04-22T19:22:47.453Z",
        :updated_at=>"2022-04-22T19:22:47.453Z"
 
    }
]

```
