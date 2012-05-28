class ColecoesController < ApplicationController

	def index
		@colecoes = Colecao.order('created_at desc')
	end

end
