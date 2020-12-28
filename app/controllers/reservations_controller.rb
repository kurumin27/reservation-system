class ReservationsController < ApplicationController
  before_action :product_name, only:[:new, :create, :edit, :update]
  before_action :reservation_product, only:[:new, :create]

  def index
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.create(reservation_params)
    
    unless @reservation.save
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private
  def reservation_params
    params.require(:reservation).permit(:date, :time, products_attributes: [:product_name, :_destroy, :id])
  end

  def product_name
    @products = Product.select(:product_name)
  end

  def reservation_product
    @product = Product.where(product_name: nil)
  end

end
