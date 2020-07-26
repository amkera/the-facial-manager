# README
This is a content management system for salons or independent estheticians that perform facials for clients as part of their skincare regimen. 
Video Walk-Through:

Blog Post about creating this project for Flatiron:

Getting started
To get the Rails server running locally:
-Clone this repo
-bundle install to install all req'd dependencies
-rake db:migrate to make all database migrations
-rails s to start the local server
Dependencies
-Devise - For implementing authentication
-Omniauth - User sign-in/sign-up through Github
Folders
app/models - Contains the database models for the application to define methods, validations, queries, and relations to other models.

app/views - Contains templates for pages presented to user.

app/controllers - Contains the controllers where requests are routed to their actions, where I find and manipulate our models and return them for the views to render.

config - Contains configuration files for  Rails application and for  database, along with an initializers folder for scripts that get run on boot.

db - Contains the migrations needed to create our database schema.
