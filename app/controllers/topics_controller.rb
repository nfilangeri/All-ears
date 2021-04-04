class TopicsController < ApplicationController
  before_action :set_topics, only: [:show, :update, :destroy]
  def index
    @topics = Topic.all
  end

  def show
    @message = Message.new
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(params_topic)
    @topic.user = current_user
    if @topic.save
     redirect_to topics_path(topic)
   end
 end

 def update
  @topic = Topic.update(params_topic)
  @topic.user = current_user
  if @topic.save
    redirect_to topics_path(topic)
  end
end

def destroy
  @topic.destroy
  redirect_to topics_path
end

private

def params_topic
  params.require(:topic).permit(:subject,:content, :user)
end

def set_topics
  @topic = Topic.find(params[:id])
end
end

