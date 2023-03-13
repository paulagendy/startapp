class ChatroomsController < ApplicationController
	def show
		@chatroom = Chatroom.find(params[:id])
		@message = Message.new
	end
  def create
    @chatroom = Chatroom.create(founder_id: current_user.id, developer_id: params[:developer_id])
    redirect_to chatroom_path(@chatroom)
  end
end
