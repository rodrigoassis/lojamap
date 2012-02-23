class ItensController < ApplicationController

	def create
		@cart = current_cart
		produto = Produto.find(params[:produto_id])
		@item = @cart.itens.build(:produto => produto)

		respond_to do |format|
			if @item.save
				format.html {redirect_to :controller => 'carts', :action => 'show', :id => @item.cart}
			else
				format.html { render :action => "new" }
			end
		end
	end

end
