class SportclubsController < ApplicationController
	def show
		@club = Sportclub.find(params[:id])
	end

	def index
		@clubs = Sportclub.all()
	end

	def toggle
		
	end
end
