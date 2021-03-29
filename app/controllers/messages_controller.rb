class MessagesController < ApplicationController
    before_action :set_messages, only: [:create, :update, :destroy]

    def create
        @message.article = Message.find(params[:topic_id])
        @message.user = current_user
        @message = Message.new(params_comment)
    end

    def update
        @message.update(params_message)
        if @comment.save
            redirect_to topic_path
        end
    end

    def destroy
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
