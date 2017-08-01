class SportclubsController < ApplicationController
	def show
	end

	def create
		@sportclub = Sportclub.new(sportclub_params)
		if @sportclub.save

		end
	end

	private
		def sportclub_params
			params.require(:sportclub).permit(:address, :postcode, :clubname, :position, :mailaddress, :webpage, :phonenumber)
		end 
end
