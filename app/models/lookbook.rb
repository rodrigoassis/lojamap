class Lookbook < ActiveRecord::Base

belongs_to :colecao
has_many :imagems, :dependent => :destroy

accepts_nested_attributes_for :imagems, :allow_destroy => true
	
validates_presence_of :nome, :colecao_id, :imagems

end
