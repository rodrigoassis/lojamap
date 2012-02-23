class Cart < ActiveRecord::Base
	has_many :itens, :dependent => :destroy
end
