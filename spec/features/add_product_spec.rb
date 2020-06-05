require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit signin_path
    fill_in :email, :with => "t@t.com"
    fill_in "Password", :with => "Venom9314"
    click_on "Go"
    click_link 'Add a new product'
    fill_in "Name", :with => 'Cheesecake'
    fill_in "Cost", :with => 35
    fill_in "Country of origin", :with => "US"
    click_on "Create Product"
    expect(page).to have_content 'Cheesecake'
  end
end

