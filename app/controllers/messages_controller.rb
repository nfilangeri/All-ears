class MessagesController < ApplicationController
  def create
    @topic = Topic.find(params[:topic_id])
    @message = Message.new(message_params)
    @message.topic = @topic
    @message.user = current_user
    if @message.save
      TopicChannel.broadcast_to(@topic, render_to_string(partial: "messages", locals: { messages: @topic.messages.last(5) }))
    else
      render "topics/show"
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
