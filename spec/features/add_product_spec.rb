require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_link 'Add a new product'
    fill_in "Name", :with => 'Dragon Fruit'
    fill_in "Cost", :with => 35
    fill_in "Country of origin", :with => "US"
    click_on "Create Product"
    save_and_open_page
    expect(page).to have_content 'Dragon Fruit'
  end
end

