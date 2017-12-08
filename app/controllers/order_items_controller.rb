class OrderItemsController < ApplicationController

  def create
    @order = current_order
    @item = @order.order_items.new(item_params)
    @order.save
    session[:order_id] = @order.id
    redirect_to products_path
  end

  def edit
    @order = current_order
    @item = @order.order_items.find(params[:id])
  end

  def update
    @order = current_order
    @item = @order.order_items.find(params[:id])
    if @item.update(item_params)
    flash[:notice] = "Cart updated!"
    respond_to do |format|
      format.html { redirect_to cart_path }
      format.js { render "products/show" }
    end
  else
    render :edit
  end
end

  def destroy
    @order = current_order
    @item = @order.order_items.find(params[:id])
    @item.destroy
    @order.save
    redirect_to cart_path
  end

  private

  def item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end
end
