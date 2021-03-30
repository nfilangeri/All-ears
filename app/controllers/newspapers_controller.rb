class NewspapersController < ApplicationController
    def index
        @newspapers = Newspaper.all
    end
    
    def edit
        @newspaper = Newspaper.find(params[:id])
    end

    def update
        @newspaper = Newspaper.find(params[:id])
        @newspaper = Newspaper.update(params_newspaper)
        redirect_to newspapers_path
    end

    private

    def params_newspaper
        params.require(:newspaper).permit(:name, :tag_political)
    end
end
