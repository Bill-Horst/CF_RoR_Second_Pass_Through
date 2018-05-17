class SimplePagesController < ApplicationController

  def landing_page
    @featured_product = Product.first
    @products = Product.limit(3)
  end

  def index
  end

  def about
  end

  def contact
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    ActionMailer::Base.mail(from: @email, to: 'bill@billhorst.com', subject: "New message from #{@name}", body: @message).deliver_now
  end

end
