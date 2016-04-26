class OrdersController < ApplicationController
  #helper :orders
  before_action :set_users, only: [:edit, :new]
  before_action :set_order_items, only: [:edit, :show]
  before_action :set_dvds, only: [:edit, :show, :new]
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # Params for ordering dropdown
  ORDERS = [ "ordid DESC", "ordid ASC" ]


  def index
    #@orders = Order.all
    scope = Order
    if params[:search].present?
      scope = scope.search(params[:search])
    end
    if params[:ordering] && ordering = ORDERS[params[:ordering].to_i]
      scope = scope.order(ordering)
    end
    @orders = scope.with_current_status()
  end

  def show
    @user = User.find(@order.userid)
  end

  def new
    @order = Order.new
  end

  def edit
  end

  def create
    @order =Order.create(order_params.except!(:order_item))
        #Order.new(order_params)
    OrderItem.process_order_items(@order,order_params[:order_item])

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
    @order = Order.find(params[:id])
    respond_to do |format|
      if @order.update_attributes(order_params.except!(:order_item))
        if order_params[:order_item].present?
          OrderItem.process_order_items(@order,order_params[:order_item])

          #if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
    end
    end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was deleted.' }
    end
  end
  #
  # def new_order_item
  #   @order_item = OrderItem.new
  # end

  # def create_order_item
  #   @order_item = OrderItem.new(order_item_params)
  #
  #   respond_to do |format|
  #     if @order.save
  #       format.html { redirect_to @order_item, notice: 'Order Item was successfully added.' }
  #       format.json { render :show, status: :created, location: @order_item }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @order_item.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  # def destroy_order_item
  #   @order_item = OrderItem.find(params[:id])
  #   @order_item.destroy
  # end

  # def show_order_item
  #   @order_item = current_order_item
  # end

  private
  def set_order
    @order = Order.find(params[:id])
  end
  def set_order_item
    @order_items = OrderItem.joins(:dvds).by_order_id(params[:ordid])
  end

  def set_users
    @users = User.all.order('username ASC')
  end

  def set_dvds
    @dvds = Dvd.order('dvdname ASC')
  end
  def order_params
    params.require(:order).permit(:ordid, :ordnum, :userid, :status, :ordertype, order_item: [:orditemid, :ordnum, :userid, :dvdid, :status, :days, :rentaldate, :returndate])
  end
  # def order_item_params
  #   params.require(:order_item).permit()
  # end
end