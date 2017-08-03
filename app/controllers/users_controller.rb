class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
    @relations = ClubUserRelation.where(user_id: @user.id).includes(:sportclub)
	end


  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
      flash[:success] = "Welcome to SportClub App"
      log_in @user
    	redirect_to @user
  	else
      flash.now[:danger] = 'Invalid email/password combination'
  		render 'new'
  	end
  end

  #def user_mark_club
  #  @user = User.find(params[:id])
  #end
  
  def createRelation(club)
    @user = current_user.club_user_relation.create(sportclub: club);
  end
  
  private 
  	def user_params
  		params.require(:user).permit(:name, :email, :password, :password_confirmation)
  	end

end