class ImagesController < ApplicationController
  def create
    @image = Image.create(url: params[:url], product_id: params[:product_id])
    if @image.valid?
      render :show
    else render json: { errors: @image.errors.full_messages }, status: 422
    end
  end
end
