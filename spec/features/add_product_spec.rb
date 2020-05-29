require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_link 'Add a new product'
    fill_in 'name', :with => 'Tyler b'
    fill_in 'cost', :with => '34'
    fill_in 'country_of_origin', :with => "US"
  end
end