class MessagesController < ApplicationController
    before_action :set_messages, only: [:create, :update, :destroy]

    def create
        @message = Message.new(params_comment)
        @message.topic = Topic.find(params[:topic_id])
        @message.user = current_user
        if @message.save
            redirect_to messages_path
        end
    end

    def update
        authorize @message
        @message.update(params_message)
        if @message.save
            redirect_to topic_path
        end
    end

    def destroy
        authorize @message
        @message.destroy
        redirect_to topic_path
    end

    private

    def params_message
        params.require(:message).permit(:content, :user, :topic)
    end
    def set_message
        @message = Message.find(params[:id])
    end
end
