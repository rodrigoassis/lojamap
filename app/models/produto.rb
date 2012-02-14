class Produto < ActiveRecord::Base

belongs_to :categoria
belongs_to :colecao
has_and_belongs_to_many :imagens

has_attached_file :imagem,
									:styles => { :original => "640x960>", :thumb => "100x100>" },
									:path => ":rails_root/public/system/produtos/:attachment/:id/:style/:filename",
									:url => "/system/produtos/:attachment/:id/:style/:filename"

validates_presence_of :nome, :categoria_id, :colecao_id
validates_numericality_of :preco

end
