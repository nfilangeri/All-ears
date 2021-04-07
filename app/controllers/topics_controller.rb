class TopicsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_topics, only: [:show, :update, :destroy]

  def index
    @topic = Topic.new
    @mytopics = current_user.topics

    if !params[:category].nil?
      @topics = Topic.where(category: params[:category]).paginate(:page => params[:page], :per_page => 6)
    else
      @topics = Topic.all.paginate(:page => params[:page], :per_page => 6)
    end
  end

  def show
    @message = Message.new
  end

  def create
    @topic = Topic.new(params_topic)
    @topic.user = current_user
    if @topic.save
      redirect_to topics_path
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

  def get_topics
    @page = @topics.each_slice(6).to_a

  end

  def params_topic
    params.require(:topic).permit(:subject, :content, :user, :category)
  end

  def set_topics
    @topic = Topic.find(params[:id])
  end

end

