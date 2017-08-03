class SportclubsController < ApplicationController
	def show
		@club = Sportclub.find(params[:id])
	end

	def index
		@clubs = Sportclub.all()
	end

	private
		def sportclub_params
			params.require(:sportclub).permit(:address, :postcode, :clubname, :position, :mailaddress, :webpage, :phonenumber)
		end 
end
