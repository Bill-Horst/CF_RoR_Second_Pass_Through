class OrdersController < ApplicationController

  before_action :authenticate_user!
  load_and_authorize_resource

  def index
    @user = current_user
    @orders = Order.where("user_id = ?", @user.id).includes(:product).all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
  end

  def create
  end

  def destroy
  end

end
