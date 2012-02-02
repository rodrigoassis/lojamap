class Conceito < ActiveRecord::Base

belongs_to :colecao
has_many :fotos, :dependent => :destroy

accepts_nested_attributes_for :fotos, :allow_destroy => true

validates_presence_of :nome, :colecao_id

end
