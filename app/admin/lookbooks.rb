ActiveAdmin.register Lookbook do

filter :nome

config.comments = false

index do
	column 'Fotos' do |lookbook|
		image_tag lookbook.imagems[0].arquivo.url(:thumb)
	end
	column :nome
	column :colecao
	default_actions
end

form :html => { :multipart => true } do |f|
	f.inputs do
	  f.input :nome
    f.input :colecao, :label => "Coleção", :label_method => :nome
  end
  
  f.inputs "Imagens do Lookbook" do
  	if f.object.new_record?
  		1.times {f.object.imagems.build}
  	end
  	
    f.has_many :imagems do |j|
    	j.form_buffers.last << "<img src='#{j.object.arquivo.url(:thumb) rescue nil}' style='margin:1em;' />".html_safe
    	j.input :_destroy, :as => :boolean, :label => "Excluir Imagem?"
      j.input :legenda
      j.input :arquivo, :as => :file
      j.input :produtos, :as => :check_boxes, :label_method => :nome
    end
  end
  
  f.buttons
end
  
end
