class TopicController < ApplicationController
    before_action :set_topics, only: [:show, :update, :destroy]
    def index
        @topics = Topic.all
    end

    def show
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

    end

    private

    def params_topic
        params.require(:topic).permit(:subject, :user)
    end

    def set_topics
        @topic = Topic.find(params[:id])
    end
end
