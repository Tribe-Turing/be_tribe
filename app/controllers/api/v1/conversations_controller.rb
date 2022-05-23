class Api::V1::ConversationsController < ApplicationController
    before_action only: [:create, :show]

    def index
        @conversations = Conversation.all
        render json: @conversations
    end

    def show
        @conversation = Conversation.find(params[:id])
        render json: @conversation
    end

    def create

      if Conversation.between(params[:user_a_id], params[:user_b_id]).present?
        render json: {error: "Invalid request"}
      else
        @conversation = Conversation.create!(conversation_params)
        render json: @conversation
      end
    end

    private

    def conversation_params
        params.permit(:user_a_id, :user_b_id)
    end

end
