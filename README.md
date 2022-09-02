# README

## About
- The main learning outcome of this project is to work with advanced forms and active record callbacks (?)

- The task is to create a flight booking website with pre-populated form information that a potential flight customer can choose from. Then the customer adds their passenger information into another form.

- The project can be found on The Odin Project: https://www.theodinproject.com/lessons/ruby-on-rails-flight-booker


## Rough idea of data architecture
### Screen 1: Search
- Airport model
  - contains airport code
  - `has_many` flights

- Flight model
  - contains departure and arrival airport `id`s, start datetime, and flight duration
-  `belongs_to` airport

### Screen 2: Pick a flight

### Screen 3: Passenger information

## Resources