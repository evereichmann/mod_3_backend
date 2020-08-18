class WrappingPapersController < ApplicationController
    def index
        @wrapping_papers = WrappingPaper.all
        render json: @wrapping_papers
    end

    def show 
        @wrapping_paper = WrappingPaper.find(params[:id])
        render json: @wrapping_paper
    end
end
