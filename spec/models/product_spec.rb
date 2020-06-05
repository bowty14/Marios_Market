require 'rails_helper'

describe Product do
  it{ should have_many(:reviews) }

  it("titleizes the name of a product") do
    product = Product.create({name: "egg whites", cost: 10, country_of_origin: "US"})
    expect(product.name()).to(eq("Egg Whites"))
  end

  it { should validate_presence_of :name}
  it { should validate_presence_of :cost}
  it {should validate_presence_of :country_of_origin}
end