class Clipping < ActiveRecord::Base

has_attached_file :imagem, 
                  :styles => { :medium => "300x300>", :thumb => "100x100>" },
									:path => ":rails_root/public/system/clippings/:attachment/:id/:style/:filename",
									:url => "/system/clippings/:attachment/:id/:style/:filename" 
                               
validates_presence_of :descricao

end
