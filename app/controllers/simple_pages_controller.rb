class SimplePagesController < ApplicationController

  def landing_page
    @featured_product = Product.first
  end

  def index
  end

  def about
  end

  def contact
  end
end