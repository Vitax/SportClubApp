# CLass ApplicationController
class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	include SessionsHelper

	before_action :result_list

	def result_list
		if !current_user.nil?
			@query_list = current_user.club_user_relation.all()
		end
	end

end
