## Project created on 5/29/2020 updated 6/12/2020

# Mario's Speciality Food Products

#### By **Tyler Bowerman**

## Description

This application allows the user to create, view, update and delete products. The user can add many products and can add,view,update, and delete review from a product.

## Specifications

|   Behavior Description|  Input Ex.                          |        Output Ex.      |
|------------------------|-----------|-------------------------------------------------|
|1. As an admin, I should be able to log in and log out of the application.|click sign in button, fill out fields, hit submit./click the log out button|"You have successfully logged in"/ "You have successfully logged out"|
|2. As an admin, I should be able to add, update and delete products.|click Add a new product, fill out the field, hit submit/click on a product, click the edit product button, fill out all field and click submit/click on product, click delete product button|your new product will be visible\click on updated product, all fields will be updated/selected product is now deleted.|
|3. As an admin, I should be able to add reviews.|click on product, click on add review, fill out all fields, click submit| your review will be visible when you click on same product.|
|4. As an admin, I want to ensure that other users don't have access to CRUD functionality.|only users that have been given the admin tag will have full CRUD| regular users will never seen any of the links that admin will.|
|5. As a user, I want to be able to create an account and add a review to a product.|click on product, click on add review, fill out all fields, click submit| your review will be visible when you click on same product.|


## Setup/Installation Requirements
1* _Clone repository from Github: https://github.com/bowty14/code_review11.git_
* _In the Terminal type : `$ git clone` [https://github.com/bowty14/code_review11.git]_
* _Navigate to folder by typing  `$ cd code_review11` in terminal._
* _Open the file up in the code editior of choice_
* _Install all missing dependencies and Gems, then type `bundle install`._
* _You will need to run `bundle install` after each new Gem added to project._
* _Make sure to check which Ruby version you are running by typing `$ ruby -v`_
* _Make sure to check what Postgres version by typing `postgres --version` in terminal._
* _To start the database run `postgres` in the background terminal._
* _In a seperate terminal type `psql`, to start SQL._
* _To run a test using Rspec, type `rpsec` into the root page of the project._
* DATABASE INSTRUCTIONS - from the root directory of this project, run these commands to start new database:
*         `rake db:create`
*         `rake db:migrate`
*        `rake db:test:prepare`

* _To view project in browser type in terminal, `rails s`._
* _Navigate to localhost:3000_


## Support and contact details
_Have a bug or an issue with this application? [Open a new issue](https://github.com/bowty14/code_review11/issues) here on GitHub.com_

## Technologies Used
* Ruby
* Rails
* HTML
* SASS
* Capybara
### License

*This software is licensed under the MIT license* 

Copyright (c) 2020 **Tyler Bowerman**
