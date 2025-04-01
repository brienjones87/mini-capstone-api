class CartedProductsController < ApplicationController
  before_action :current_user

  def create
    @carted_product = CartedProduct.create(user_id: current_user.id, product_id: params[:product_id], quantity: params[:quantity], status: "carted", order_id: nil)
    if @carted_product.valid?
      render :show
    else render json: { errors: @carted_product.errors.full_messages }, status: 422
    end
  end

  def index
    @carted_product = CartedProduct.find_by(user_id: current_user.id)
    render :index
  end
end
