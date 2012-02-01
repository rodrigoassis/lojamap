class Foto < ActiveRecord::Base

belongs_to :conceito

has_attached_file :arquivo, :styles => { :thumb => "100x100>" },
									:path => ":rails_root/public/system/fotos/:attachment/:id/:style/:filename",
									:url => "/system/fotos/:attachment/:id/:style/:filename"
					
validates_attachment_presence :arquivo

end
