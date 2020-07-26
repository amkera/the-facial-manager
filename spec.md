Requirements
[X] Use the Ruby on Rails framework.

Your models must:

[X] Include at least one has_many, at least one belongs_to, and at least two has_many :through relationships
    Estheticians
      -have many facials
      -have many clients through facials

    Clients
      -Have many facials
      -Have many estheticians through facials

    Facials
      -belong to clients
      -belong to estheticians

[X] Include a many-to-many relationship implemented with has_many :through associations. The join table must include a user-submittable attribute — that is to say, some attribute other than its foreign keys that can be submitted by the app's user

  Estheticians have many clients through facials
  Clients have many estheticians through facials

  User submits

  "facial_date"
  "facial_time"
  "acne"
  "cystic_acne"
  "deep_pitted_scars"
  "dryness"
  "dullness"
  "flakiness"
  "flat_dark_scars"
  "redness"
  "wrinkles"
  "other"


[X] Your models must include reasonable validations for the simple attributes. You don't need to add every possible validation or duplicates, such as presence and a minimum length, but the models should defend against invalid data.
  Client has validations for presence and uniqueness of email, first name, last name.
  Client has validations for presence and length of phone number.

  Estheticians uses Devise gem to defend against invalid email addresses, invalid passwords.

  Facials has validations for presence of date and time, along with custom validator for past facial dates.

[X] You must include at least one class level ActiveRecord scope method. a. Your scope method must be chainable, meaning that you must use ActiveRecord Query methods within it (such as .where and .order) rather than native ruby methods (such as #find_all or #sort).

  .where is used in a search function in the Client class.

[X] Your application must provide standard user authentication, including signup, login, logout, and passwords.
  Devise Gem

[X] Your authentication system must also allow login from some other service. Facebook, Twitter, Foursquare, Github, etc...
  Github

[X] You must include and make use of a nested resource with the appropriate RESTful URLs.
  Complete.

  [X] You must include a nested new route with form that relates to the parent resource
    New Facial Form is a nested resource of the esthetician, and automatically associates a new facial to the logged in esthetician.  

  [X] You must include a nested index or show route
    Nested facial show route under esthetician

[X] Your forms should correctly display validation errors.
  Complete

  [X] Your fields should be enclosed within a fields_with_errors class
    In the form_for for both clients and facials, there is an if statement that satisfies this requirement.

  [X] Error messages describing the validation failures must be present within the view.
    In the form_for for both clients and facials, there is an if statement that satisfies this requirement. Also taken care of with the Devise gem.

Your application must be, within reason, a DRY (Do-Not-Repeat-Yourself) rails app.

  [X] Logic present in your controllers should be encapsulated as methods in your models.
    Controllers are as DRY as possible. Logic is in the models, such as custom validators and basic helper functions.

  [X] Your views should use helper methods and partials when appropriate.   
    Two of the 3 resources use partials.  

  [X] Follow patterns in the Rails Style Guide and the Ruby Style Guide.
    Complete.

Do not use scaffolding to build your project. Your goal here is to learn. Scaffold is a way to get up and running quickly, but learning a lot is not one of the benefits of scaffolding.
  Scaffolding was not used.
