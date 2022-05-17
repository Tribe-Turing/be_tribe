class MessagesController < ApplicationController
    before_action only: [:create, :update]

    def create
        @message = Message.create(message_params)
        @conversation = Chatroom.find(@message[:chatroom_id])
        ConversationChannel.broadcast_to(@conversation, { message: @message, user_prof_pic: @message.user.profile_pic, user_username: @message.user.username })
        render json: @message
    end

    def update
        @message = Message.find(params[:id])
        @message.update(message_params)
        render json: @message
    end

    private

    def message_params
        params.permit(:content, :conversation_id, :user_id)
    end

end
