require 'faker'

Product.destroy_all

50.times do |products_index|
  product = Product.create!(name: Faker::Food.fruits,
                          cost: Faker::Number.number(digits: 2),
                          country_of_origin: Faker::Nation.capital_city)
  5.times do
    review = product.reviews.new(author: Faker::FunnyName.name,
                            content_body: Faker::Hipster.sentence(word_count: 15))
                            review.save
  end
end
p "Created #{Review.count} reviews"
p "Created #{Product.count} products"

