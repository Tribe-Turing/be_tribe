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
<img width="1010" alt="Screen Shot 2022-05-26 at 2 57 21 PM" src="https://user-images.githubusercontent.com/87387139/170579223-78af0685-c406-4b4b-9907-2f85562624a5.png">


## [JSON Contract and Endpoints tested in Postman](https://documenter.getpostman.com/view/20017443/Uz59PzXu)

<table>
    <tr>
        <td> Sam Ivari: <a href="https://github.com/samivari">GitHub</td>
        <td> Gunnar Sorensen: <a href="https://github.com/glsorensen">GitHub</td>
        <td> Eldridge Turambi: <a href="https://github.com/Eldridge-Turambi">Github</td>
        <td> Dillon Parker: <a href="https://github.com/Prkr93">Github</td>
    </tr>
 <td><img src="https://avatars.githubusercontent.com/u/87387139?v=4" alt="Sam Ivari GitHub"
 width="150" height="auto" /></td>
 <td><img src="https://avatars.githubusercontent.com/u/81265307?v=4" alt="Gunnar Sorensen GitHub"
 width="150" height="auto" /></td>
 <td><img src="https://avatars.githubusercontent.com/u/87398716?v=4" alt="Eldridge Turambi GitHub"
 width="150" height="auto" /></td>
 <td><img src="https://avatars.githubusercontent.com/u/90285348?v=4" alt="Dillon Parker GitHub"
 width="150" height="auto" /></td>
</table>
