class Product < ApplicationRecord
  has_many :orders

  def self.search(search_term)
    if Rails.env.development?
      @products = Product.where('name LIKE ?', "%#{search_term}%")
    elsif Rails.env.production?
      @products = Product.where('name ilike ?', "%#{search_term}%")
    end
  end

end
# I'm on lesson 5.2 about 3/5 down the lesson about to start the section called "Product Form"
