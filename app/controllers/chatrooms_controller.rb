class ChatroomsController < ApplicationController
  def show
		@chatroom = Chatroom.find(params[:id])
		@message = Message.new
	end

  def create
    developer = DeveloperProfile.find(params[:developer_id])
    name = "Conversation between #{developer.user.first_name} and #{current_user.first_name}"
    @chatroom = Chatroom.create!(founder: current_user, developer: developer.user,name: name)
		redirect_to chatroom_path(@chatroom)
  end
end
