class ContatoController < ApplicationController

	def index
		@contato = Contato.new
	end

	def enviar
		p params[:mensagemContato]
		@contato = params

		Mensagem.new_message(@contato).deliver
		redirect_to(contato_path)

	end

end
