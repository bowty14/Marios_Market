require 'rails_helper'
user = User.create({email: "y@y.com", password: "Qwerty1", password_confirmation: "Qwerty1", admin: "t"})
product = Product.create({name: "Table", cost: 10, country_of_origin: "US"})
describe "the edit a product process" do
  it "edits a product" do
    visit signin_path
    fill_in :email, :with => "y@y.com"
    fill_in "Password", :with => "Qwerty1"
    click_on "Go"
    click_link 'Table'
    click_link "Edit"
    fill_in "Name", :with => 'Mouse'
    fill_in "Cost", :with => 35
    fill_in "Country of origin", :with => "US"
    click_on "Update Product"
    expect(page).to have_content 'Mouse'
  end
end