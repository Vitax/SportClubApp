class SportclubsController < ApplicationController
	def show
		
	end

	private
		def sportclub_params
			params.require(:sportclub).permit(:address, :postcode, :clubname, :position, :mailaddress, :webpage, :phonenumber)
		end 
end
