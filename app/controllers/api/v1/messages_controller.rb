class Api::V1::MessagesController < ApplicationController
    before_action only: [:create, :update]

    def create
        @message = Message.create(message_params)
        @conversation = Conversation.find(@message[:conversation_id])
        ConversationChannel.broadcast_to(@conversation, { message: @message })
        render json: @message
    end

    # def show
    #   @message = Message.find(params[:id])
    #   render json: @message
    # end

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
