class ColecoesController < ApplicationController

	def index
		@colecao = Colecao.all.last
	end

end
