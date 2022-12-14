# README

## Future refactoring
- style, add input validation
- [connect mailer to heroku as extra credit](https://www.theodinproject.com/lessons/ruby-on-rails-sending-confirmation-emails#assignment)

## About
- The main learning outcome of this project is to work with advanced forms and active record callbacks (?)

- The task is to create a flight booking website with pre-populated form information that a potential flight customer can choose from. Then the customer adds their passenger information into another form.

- The project can be found on The Odin Project: https://www.theodinproject.com/lessons/ruby-on-rails-flight-booker

## Challenges
- I spent many hours trying to figure out why my `BookingsController` was not saving the current `booking` from the `bookings#new` form. I also didn't know how to build the `passengers` for the `booking` object. After much googling, ultimately in `BookingsController#new`, I followed [this SO post](https://stackoverflow.com/questions/18540679/rails-4-accepts-nested-attributes-for-and-mass-assignment) for building the `passengers` objects (linked from the project directions as well). And I added `hidden_field` tags for `flight_id` and `passenger_amt` in the `views/bookings/new.html.erb` form to pass in the `params` to `BookingsController#create`.

## Resources

- `Object doesn't support #inspect` kept tripping me up, I wasn't able to get a `WHERE` query with a `LIKE` condition on the `start_datetime` column in the `flights` table. This alone kept tripping me up. Using the `Date#all_day` from Rails inside the `WHERE` query worked such that I didn't get `Object doesn't support #inspect`.
  - https://stackoverflow.com/questions/5943872/find-records-with-datetime-that-match-todays-date-ruby-on-rails

- Flight duration conversion to human readable text and interval column
  - https://stackoverflow.com/questions/26029194/display-duration-in-a-human-readable-format-such-as-x-hours-y-minutes
  - https://selleo.com/til/posts/ymndeixmeo-interval-column-in-rails-61-and-as-durationparts

- `collection_radio_buttons`
  - I wanted to customize what information to put as the label for each radio button and didn't know how to incorporate that. I learned (by reading the following documentation) to put a method in the Flight model to use in the Flight views `submission_results` partial form's `collection_radio_button` `text_method`
  - https://apidock.com/rails/v4.0.2/ActionView/Helpers/FormOptionsHelper/collection_radio_buttons

- `form_with` hidden fields
  - https://stackoverflow.com/questions/64533667/how-to-add-a-hidden-field-to-form-with

- nested forms
  - https://guides.rubyonrails.org/form_helpers.html#building-complex-forms