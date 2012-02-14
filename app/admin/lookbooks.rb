ActiveAdmin.register Lookbook do

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
  end

  f.inputs "Imagens do Lookbook" do

    f.has_many :imagens do |j|
    	if j.object.new_record?
    		j.input :arquivo, :as => :file
  			j.input :legenda
  		else
  			j.form_buffers.last << "<img src='#{j.object.arquivo.url(:thumb) rescue nil}' style='margin:1em;' />".html_safe
  			j.input :_destroy, :as => :boolean, :label => "Excluir Imagem?"
  			j.input :arquivo, :as => :file
  			j.input :legenda
  		end
      j.input :produtos, :as => :check_boxes, :label_method => :nome
    end
  end

  f.buttons
end

end
