class Item < ActiveRecord::Base
	belongs_to :produto
	belongs_to :cart
end
