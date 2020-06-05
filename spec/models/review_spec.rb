require 'rails_helper'

describe Review do
  product = Product.create({name: "dragon fruit", cost: 10, country_of_origin: "spain"})
  it {should belong_to (:product)}
  it {should validate_presence_of :author}
  it {should validate_presence_of :content_body}
  it { should validate_length_of( :content_body).is_at_most(250)}
  it { should validate_length_of( :content_body).is_at_least(50)}
end