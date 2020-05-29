class Review < ApplicationRecord
  belongs_to :product

  validates :author, presence: true
  validates :content_body, presence: true
  # didn't think I needed to test the rating between a number of 1 - 5 since the radio buttons limit that already.
  validates_length_of :content_body, maximum: 250
  validates_length_of :content_body, minimum: 50
end