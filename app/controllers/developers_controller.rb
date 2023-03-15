class DevelopersController < ApplicationController
  def new
    @developer = DeveloperProfile.new
  end

  def my_dev_profile
    @dev_profile = current_user.developer_profile
    @chatroom = Chatroom.last
    @offers = @dev_profile.offers
  end

  def show
    @developer = DeveloperProfile.find(params[:id])
    @dev_technologies = @developer.technologies
    @dev_languages = @developer.spoken_languages.first
    @dev_pic = @developer.avatar
  end


  def create
    @developer = DeveloperProfile.new(developer_params)
    @developer.user = current_user

    if @developer.save
       redirect_to developer_path(@developer)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @developers = developer.all
  end

  def developer_pic
    @developers.all
  end 

  private

  def developer_params
    params.require(:developer).permit(:years_of_experience, :school, :degree)
  end
end
