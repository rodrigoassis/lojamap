class Cart < ActiveRecord::Base

	has_many :itens, :dependent => :destroy

	def add_product(produto_id)
		current_item = itens.find_by_produto_id(produto_id)
		if current_item
			current_item.quantidade += 1
		else
			current_item = itens.build(:produto_id => produto_id)
		end
		current_item
	end

	def preco_total
		itens.to_a.sum { |item| item.preco_total }
	end

end
