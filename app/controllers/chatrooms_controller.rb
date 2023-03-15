class ChatroomsController < ApplicationController
  def show
		@chatroom = Chatroom.find(params[:id])
		@message = Message.new
	end

  def create
    developer = DeveloperProfile.find(params[:developer_id])
    @chatroom = Chatroom.create!(founder: current_user, developer: developer.user)
		redirect_to chatroom_path(@chatroom)
  end
end
