Salon
============
Product Description
-------------------

Simple web app for storing stylist and client information as a salon owner.

PSQL Database Structure Setup 
-------------------
1. Go into terminal and type "brew install postgres" (assuming you have "Homebrew" installed)
2. Type postgres in terminal to start the server
3. Open a new tab in terminal and type psql to run PSQL, leaving the postgres tab open 

From USER$ type in the following command:

CREATE DATABASE salon;

Change from USER$ to salon$ by typing /c salon;

From salon$ type in the following commands:

CREATE TABLE clients (id serial PRIMARY KEY, client_name varchar, stylist_id int);
CREATE TABLE stylists (id serial PRIMARY KEY, stylist_name varchar);


Setup Instructional
-------------------

1. Download project folder
2. Go into terminal and type "gem install bundler"
3. Type "bundle"
4. Type "ruby app.rb"
5. Go to localhost:4567

License
=======
Joey Sandine copyright 2015 GNU GPL v2.0