class Lookbook < ActiveRecord::Base

belongs_to :colecao
has_many :imagens, :dependent => :destroy

accepts_nested_attributes_for :imagens, :allow_destroy => true

validates_presence_of :nome, :colecao_id

end
