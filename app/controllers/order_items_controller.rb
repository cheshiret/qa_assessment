class OrderItemsController < ApplicationController

  def new
    @parent = parent_object
    @comment = OrderItem.new
  end

  # # GET /parents/1/children/new (AJAX)
  # def new
  #   parent = Parent.find(params[:parent_id])
  #   @child = parent.children.create
  #   new_child_form = render_to_string :layout => false
  #   new_child_form.gsub!("[#{@child.id}]", "[#{Time.now.to_i}]")
  #   render :text => new_child_form, :layout => false
  # end

  def create
    @parent = parent_object
    @order_item = @parent.order_item.new
  end

  def show
    @parent = Order.find(params[:ordid])
    @child = OrderItem.find(params[:orditemid])
  end

  def index
    if params[:ordid]
      @order_item = Order.find(params[:ordid]).order_item
    end
  end

  def parent_object
    case
      when params[:ordid] then Order.find(params[:ordid])
    end
  end

  def parent_url(parent)
    case
      when params[:ordid] then orders_url(parent)
    end
  end




  # # DELETE /parents/1/children/1 (AJAX)
  # def destroy
  #   parent = Parent.find(params[:parent_id])
  #   unless parent.children.exists?(params[:id])
  #     render :text => { :success => false, :msg => 'the child was not found.' }.to_json and return
  #   end
  #   if parent.children.destroy(params[:id]) # Rails < 2.3.5, if parent.children.destroy(Child.find(params[:id]))
  #   render :text => { :success => true }.to_json
  #   else
  #   render :text => { :success => false, :msg => 'something unexpected happened.' }.to_json
  #   end
  #   end

  private

end