class Clipping < ActiveRecord::Base

has_attached_file :imagem, 
                  :styles => { :medium => "300x300>",
                               :thumb => "100x100>" }
                               
validates_presence_of :descricao

end
