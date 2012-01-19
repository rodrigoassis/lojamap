class Produto < ActiveRecord::Base

belongs_to :categoria
belongs_to :colecao

has_attached_file :imagem, 
                  :styles => { :medium => "300x300>",
                               :thumb => "100x100>" }
                               
validates_presence_of :nome, :categoria_id

end
