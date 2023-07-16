class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

  def print_review
    "#{product.name} by #{user.name}: #{star_rating}. #{comment}"
  end
end
