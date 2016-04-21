class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  def index
    @orders = Order.all
  end

  def show
  end

  def new
    @order = Order.new
  end

  def edit
  end

  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
  end

  def new_order_item
    @order_item = OrderItem.new
  end

  def create_order_item
    @order_item = OrderItem.new(order_item_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order_item, notice: 'Order Item was successfully added.' }
        format.json { render :show, status: :created, location: @order_item }
      else
        format.html { render :new }
        format.json { render json: @order_item.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy_order_item
    @order_item = OrderItem.find(params[:id])
    @order_item.destroy
  end

  def show_order_item
    @order_item = current_order_item
  end

  private
  def set_order
    @order = Order.find(params[:id])
  end
  def order_params
    params.require(:order).permit(:ordid, :ordnum, :userid, :status, :ordertype)
  end
  def order_item_params
    params.require(:order_item).permit(:orditemid, :ordnum, :userid, :dvdid, :status, :days, :rentaldate, :returndate)
  end
end