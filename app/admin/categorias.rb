ActiveAdmin.register Categoria do

filter :nome

config.comments = false

index do
	column :nome
	default_actions
end

end
