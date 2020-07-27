# README
This is a content management system for salons or independent estheticians that perform facials for clients as part of their skincare regimen.
Video Walk-Through:

Blog Post about creating this project for Flatiron:

Getting started
To get the Rails server running locally:
-Clone down this repo
-Run bundle install to install all the dependencies.
-Run rake db:migrate to make all database migrations, and to have the database set up.
-Run rails s to start the local server

Dependencies in this app:
-Devise - For implementing authentication
-Omniauth - User sign-in/sign-up through Github
Folders

The app/models - Contains the database models for the application to define methods, validations, queries, and relations to other models.

The app/views - Contains templates for all the pages presented to user.

The app/controllers - Contains the controllers where requests are routed to their actions, where I find and manipulate our models and return them for the views to render.

Config - Contains configuration files for  Rails application and for  database, along with an initializers folder for scripts that get run on boot.This is also where the application has its routes.rb file.

db - Contains the migrations needed to create my database schema.
