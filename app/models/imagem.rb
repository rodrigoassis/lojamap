class Imagem < ActiveRecord::Base

belongs_to :lookbook
has_and_belongs_to_many :produtos

has_attached_file :arquivo, :styles => { :thumb => "100x100>" },
									:path => ":rails_root/public/system/imagens/:attachment/:id/:style/:filename",
									:url => "/system/imagens/:attachment/:id/:style/:filename"

validates_attachment_presence :arquivo

end
