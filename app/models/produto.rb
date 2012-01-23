class Produto < ActiveRecord::Base

belongs_to :categoria
belongs_to :colecao

has_attached_file :imagem,
									:styles => { :original => "640x960>", :thumb => "245x245^" } 
                               
validates_presence_of :nome, :categoria_id, :colecao_id

end
