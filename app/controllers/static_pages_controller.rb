# Controller for the static Pages home and
class StaticPagesController < ApplicationController

    def home
    	if logged_in?
    		redirect_to '/sportclubs'
    	end
    end

    def help
    end

    def about
    end

    def contact
    end
end
