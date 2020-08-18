class WrappingPaperImagesController < ApplicationController
    def index
        @wrapping_paper_images = WrappingPaperImage.all
        render json: @wrapping_paper_images
    end
    
    def show
        @wrapping_paper_image = WrappingPaperImage.find(params[:id])
        render json: @wrapping_paper_image
    end    
end
