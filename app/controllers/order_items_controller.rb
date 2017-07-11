class OrderItemsController < ApplicationController

	def create
		@account = current_account
		@order = current_order
		@order.account_id = @account.id
		@item = @order.order_items.new(item_params)
		if @order.save!
			session[:order_id] = @order.id
			@order_items = @item
			respond_to do |format|
				format.html { redirect_to products_path}
				format.js
			end
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
