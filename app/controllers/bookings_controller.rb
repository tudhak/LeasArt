class BookingsController < ApplicationController
  before_action :set_item, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.status = "pending"
    @booking.item = @item
    @booking.user = current_user
    @booking.total_price = ((@booking.end_date - @booking.start_date) / 43200 ) * @item.price
    if @booking.save
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def my_bookings
    @bookings = current_user.bookings
  end

  def booked_items_index
    @bookings = Booking.all.where(:status => ["pending", "confirmed"])
  end

  private

  def set_item
    @item = Item.find(params[:item_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
