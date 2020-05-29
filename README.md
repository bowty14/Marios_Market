## Project created on 5/29/2020

# Mario's Speciality Food Products

#### By **Tyler Bowerman**

## Description

This application allows the user to create, view, update and delete products. The user can add many products and can add,view,update, and delete review from a product.

## Specifications

|   Behavior Description                              |  Input Ex.                          |        Output Ex.                   |
|----------------------------------------------------|---------------------------------------|-------------------------------------------------|
|1. As a user, I want to view,<br> and add products.|Type product name<br> in text field on<br> the add a new product page .(Coffee)|When you hit the submit<br> button you will be redirected<br> to the products page where<br> you can view the <br>created product(s)|
|2. As a user, I want to update products.|When you click on<br>  the product name, from<br>  the  products page<br>  you can click on the link<br>  "Edit product" Then type<br>  the name or any other asspect you'd like to update<br>  the product to|On submit you <br> will return to the products page<br> where you can see <br> the product<br>  has been updated.|
|3. As a user, I want to delete products.|When you click on the <br> product name, on <br> the products page you can<br>  click on the link<br>  "Delete product"|On submit you will<br>  return to the products<br> page where you can see that the <br>  product has been deleted.|
|4. As a user, I want to view,<br> and add reviews.|Type your name<br> in text field on<br> the add a new review page, click one of the buttons labeled 1 -5 to rate the product, fill out the large text box to share your thoughts|When you hit the submit<br> button you will be redirected<br> to the product page where<br> you can view the <br>created review(s)|
|5. As a user, I want to update reviews.|When you click on<br>  the reviews name, from<br>  the  product page<br>  you can click on the link<br>  "Edit review" Then type<br>  the name or any other asspect you'd like to update<br>  the review to|On submit you <br> will return to the product page<br> where you can see <br> the review<br>  has been updated.|
|6. As a user, I want to delete reviews.|When you click on the <br> name of the person who left the review, on <br> the product page you can<br>  click on the link<br>  "Delete review"|On submit you will<br>  return to the product<br> page where you can see that the <br>  review has been deleted.|


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