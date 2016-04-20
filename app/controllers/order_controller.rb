class OrderController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = current_order
  end

  def new
    @order = Order.new
  end

  def edit
    @order = Order.find(params[:ordid])
  end

  def create
    @order = Order.new(params[:order])
  end

  def update
    @order = Order.find(params[:ordid])
  end

  def destroy
    @order = Order.find(params[:ordid])
    @order.destroy
  end
end