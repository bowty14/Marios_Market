## Project created on 5/29/2020 updated 6/5/2020

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
1. Clone this repository to your machine
2. This app uses a database so you will have to run the following commands to get all funtionality.
<ul>
<li>createdb code_review11_development </li>
<li>psql code_review11_development  < database_backup.sql</li>
<li>createdb -T code_review11_development  code_review11_test</li>(This command makes a test database using the volunteer_tracker DB as a template)
</ul>
3. Install packages Ruby Gem by typing `$ bundle install` in the command line
<br>
4. Run the application by typing `rails server` in the command line
<br>
5. Visit localhost: 3000 to begin using the app

## Known Bugs
No known bugs at this time in production. However in testing I am unable to get a integration test for creating a review to pass.

## Support and contact details
_Have a bug or an issue with this application? [Open a new issue](https://github.com/bowty14/code_review11/issues) here on GitHub.com_

## Technologies Used
* Ruby
* Rails
* Capybara
### License

*This software is licensed under the MIT license* 

Copyright (c) 2020 **Tyler Bowerman**