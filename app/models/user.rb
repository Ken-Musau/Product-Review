class User < ActiveRecord::Base
  has_many :reviews
  has_many :products, through: :reviews

  def favorite_product
    products.find_by(reviews: { star_rating: reviews.maximum(:star_rating) })
  end

  def remove_reviews(product)
    reviews.where(product: product).destroy_all
  end
end
