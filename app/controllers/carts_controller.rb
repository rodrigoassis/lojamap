class CartsController < ApplicationController

	def index
		begin
			@cart = Cart.find(session[:cart_id])
		rescue ActiveRecord::RecordNotFound
			logger.error "Attempt to access invalid cart #{params[:id]}"
			redirect_to :controller => 'produtos', :action => 'index'
		end
	end

	def destroy
		@cart = current_cart
		@cart.destroy
		session[:cart_id] = nil

		respond_to do |format|
			format.html { redirect_to :controller => 'produtos', :action => 'index' }
		end
	end

end
