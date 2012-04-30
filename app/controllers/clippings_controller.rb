class ClippingsController < ApplicationController

	def index
		@clippings = Clipping.order('created_at desc')
	end

end
