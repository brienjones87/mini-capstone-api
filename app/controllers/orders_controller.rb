class OrdersController < ApplicationController
  before_action :current_user

  def create
      product = Product.find(params[:product_id])
      @order = Order.create(
        user_id: current_user.id,
        product_id: params[:product_id],
        quantity: params[:quantity],
        subtotal: params[:quantity].to_i * product.price,
        tax: params[:quantity].to_i * product.tax,
        total: params[:quantity].to_i * product.total
      )
    if @order.valid?
      render json: { message: "Order successfully created" }
    else render json: { errors: @order.errors.full_messages }, status: 422
    end
  end

  def show
    @order = current_user.orders.find_by(id: params["id"])
    render :show
  end

  def index
    @orders = current_user.orders
    render :index
  end
end
