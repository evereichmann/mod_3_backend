class InnerTextsController < ApplicationController
    def show
        @inner_text = InnerText.find(params[:id])
        render json: @inner_text
    end    
end
