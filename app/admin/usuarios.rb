ActiveAdmin.register Usuario do

menu :label => "Usuários"

config.comments = false

filter :email

index do
	column :email
	default_actions
end

form do |f|
	f.inputs "Detalhes do Usuário" do
		f.input :email
		f.input :password, :label => "Senha"
		f.input :password_confirmation, :label => "Confirmação"
	end
	f.buttons
end

show do
	attributes_table :email
end
  
end
