class ClubUserRelationsController < ApplicationController
	include SessionsHelper

	def create
		club = Sportclub.find(params[:sportclub_id])
    	@followed = ClubUserRelation.where(user_id: current_user.id, sportclub_id: club.id)
    	
    	if(@followed.blank?)
			@relation = current_user.club_user_relation.create(sportclub: club)
		else 
			@followed.destroy_all
		end

		redirect_to sportclubs_path
	end
end
