class DevelopersController < ApplicationController
  def new
    @developer = DeveloperProfile.new
  end

  def show
    @developer = DeveloperProfile.find(params[:id])
    @dev_technologies = @developer.technologies
    @dev_languages = @developer.spoken_languages.first
    @dev_pic = @developer.avatar
    # Here is where I want to create a chatroom if one does not exist
    @existing_chatroom = Chatroom.get_chatroom(current_user, @developer.user).first
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
