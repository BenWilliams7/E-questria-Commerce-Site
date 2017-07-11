class OrderItemsController < ApplicationController

	# def new
	# 	@order = current_order
	# 	@item = @order.order_items.new
	# end

	def create
		@account = current_account
		@order = current_order
		@order.account_id = @account.id
		@item = @order.order_items.new(item_params)
		if @order.save!
			session[:order_id] = @order.id
			redirect_to products_path
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
