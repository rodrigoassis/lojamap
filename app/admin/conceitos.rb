ActiveAdmin.register Conceito do

filter :nome

config.comments = false

index do
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
  	
    f.has_many :fotos do |j|
    	if j.object.new_record?
    		j.input :arquivo, :as => :file
  			j.input :legenda
  		else
  			j.form_buffers.last << "<img src='#{j.object.arquivo.url(:thumb) rescue nil}' style='margin:1em;' />".html_safe
  			j.input :_destroy, :as => :boolean, :label => "Excluir Foto?"
  			j.input :arquivo, :as => :file
  			j.input :legenda
  		end      	
    end
  end

  f.buttons
end
  
end
