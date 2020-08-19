class WrappingPaperImagesController < ApplicationController
    def index
        @wrapping_paper_images = WrappingPaperImage.all
        render json: @wrapping_paper_images
    end
    
    def show
        @wrapping_paper_image = WrappingPaperImage.find(params[:id])
        render json: @wrapping_paper_image
    end
    
    def create
        @wrapping_paper_image = WrappingPaperImage.new(wrapping_paper_image_params)
        if @wrapping_paper_image.save
            render json: @wrapping_paper_image
        else
            render json: @wrapping_paper_image.errors
        end        
    end 

    def update
        @wrapping_paper_image = WrappingPaperImage.find(params[:id])
        if @wrapping_paper_image.update
            render json: @wrapping_paper_image
        else
            render json: @wrapping_paper_image.errors
        end        
    end


    def destroy
        @wrapping_paper_image = WrappingPaperImage.find(params[:id])
        @wrapping_paper_image.destroy
    end    

    private

    def wrapping_paper_image_params
        params.require(:wrapping_paper_image).permit(:image_id, :wrapping_paper_id)
    end 






end
