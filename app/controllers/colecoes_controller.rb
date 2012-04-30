class ColecoesController < ApplicationController

	def index
		@colecoes = Colecao.order('created_at desc').limit(2)
	end

end
