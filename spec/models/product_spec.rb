require 'rails_helper'

describe Product do
  it{ should have_many(:reviews) }

  it("titleizes the name of an product") do
    product = Product.create({name: "dragon fruit"})
    expect(product.name()).to(eq("Dragon Fruit"))
  end
end