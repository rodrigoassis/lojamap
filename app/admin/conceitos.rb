ActiveAdmin.register Conceito do

filter :nome

config.comments = false

index do
	column 'Fotos' do |conceito|
		image_tag conceito.fotos[0].arquivo.url(:thumb)
	end
	column :nome
	column :colecao
	default_actions
end

form :html => { :multipart => true } do |f|
  f.inputs do
    f.input :nome
    f.input :colecao, :label => "Coleção", :label_method => :nome
   	f.input :descricao, :label => "Descrição"      
  end

  f.inputs "Fotos do Álbum" do
  	if f.object.new_record?
  		1.times {f.object.fotos.build}
  	end
  	
    f.has_many :fotos do |j|
    	j.form_buffers.last << "<img src='#{j.object.arquivo.url(:thumb) rescue nil}' style='margin:1em;' />".html_safe
      j.input :legenda
      j.input :arquivo, :as => :file
      j.input :_destroy, :as => :boolean, :label => "Excluir Foto?"
      	
    end
  end

  f.buttons
end
  
end