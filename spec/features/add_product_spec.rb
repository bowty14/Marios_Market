require 'rails_helper'
user = User.create({email: "y@y.com", password: "Qwerty1", password_confirmation: "Qwerty1", admin: "t"})

describe "the add a product process" do
  it "adds a new product" do
    visit signin_path
    fill_in :email, :with => "y@y.com"
    fill_in "Password", :with => "Qwerty1"
    click_on "Go"
    click_link 'Add a new product'
    fill_in "Name", :with => 'Cheesecake'
    fill_in "Cost", :with => 35
    fill_in "Country of origin", :with => "US"
    click_on "Create Product"
    expect(page).to have_content 'Cheesecake'
  end
end

