class InnerTextsController < ApplicationController
    def show
        @inner_text = InnerText.find(params[:id])
        render json: @inner_text
    end 

    def create
        @inner_text = InnerText.new(inner_text_params)
        if @inner_text.save
            render json: @inner_text
        else
            render json: @inner_text.errors
        end        
    end 

    def update
        @inner_text = InnerText.find(params[:id])
        if @inner_text.update
            render json: @inner_text
        else
            render json: @inner_text.errors
        end        
    end


    def destroy
        @inner_text= InnerText.find(params[:id])
        @inner_text.destroy
    end    

    private

    def inner_text_params
        params.require(:inner_text).permit(:inner_text, :wrapping_paper_id)
    end
end
