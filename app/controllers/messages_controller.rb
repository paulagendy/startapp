class MessagesController < ApplicationController
	def create
		@message = Message.new(message_params)
		#TODO: associate chatroom with developper and founder
		@chatroom = Chatroom.find(params[:chatroom_id])
		@message.chatroom = @chatroom
		@message.chatroom_id = @chatroom.id
		@message.user_id = current_user.id

		if @message.save
			redirect_to chatroom_path(@chatroom)
		else
			render 'chatrooms/show', status: :unprocessable_entity
		end
	end

	private

	def message_params
		params.require(:message).permit(:content)
	end
end
