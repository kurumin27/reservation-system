class ReservationsController < ApplicationController
  before_action :product_name, only:[:new, :create, :edit, :update]
  before_action :move_to_sign_in, only: [:index, :new, :edit] 

  def index
      @reservation = Reservation.count(current_user.id)
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
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
    params.require(:reservation).permit(:datetime, :product_id).merge(user_id: current_user.id)
  end

  def product_name
    @products = Product.all
  end

  def move_to_sign_in
    unless user_signed_in?
      redirect_to new_user_session_path
    end
  end
  # def reservation_product
  #   @product = Product.where(product_name: nil)
  # end

end
