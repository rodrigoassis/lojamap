class Item < ActiveRecord::Base
	belongs_to :produto
	belongs_to :cart

	def preco_total
		produto.preco * quantidade
	end

end
