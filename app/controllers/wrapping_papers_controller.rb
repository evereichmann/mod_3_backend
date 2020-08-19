class WrappingPapersController < ApplicationController
    def index
        @wrapping_papers = WrappingPaper.all
        render json: @wrapping_papers
    end

    def show 
        @wrapping_paper = WrappingPaper.find(params[:id])
        render json: @wrapping_paper
    end

    def create
        @wrapping_paper = WrappingPaper.new(wrapping_paper_params)
        if @wrapping_paper.save
            render json: @wrapping_paper
        else
            render json: @wrapping_paper.errors
        end        
    end 

    def update
        @wrapping_paper = WrappingPaper.find(params[:id])
        if @wrapping_paper.update
            render json: @wrapping_paper
        else
            render json: @wrapping_paper.errors
        end        
    end


    def destroy
        @wrapping_paper = WrappingPaper.find(params[:id])
        @wrapping_paper.destroy
    end    

    private

    def wrapping_paper_params
        params.require(:wrapping_paper).permit(:name, :layout, :user_id)
    end    
end
