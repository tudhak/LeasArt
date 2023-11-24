class BookingsController < ApplicationController
  before_action :set_item, only: [:create]

  def create
    @booking = Booking.new(booking_params)
    @booking.status = "pending"
    @booking.item = @item
    @booking.user = current_user
    @booking.total_price = ((@booking.end_date - @booking.start_date) / 86400 ) * @item.price
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def dashboard
    @my_items = current_user.items
    @my_bookings = current_user.bookings
    @all_bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to item_path(@booking.item), status: :see_other
  end

  def booked_items_show
    @booking = Booking.find(params[:id])
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.update(status: "accepted")
    redirect_to my_booked_item_path(@booking), notice: "Status updated to #{@booking.status}"
  end

  def reject
    @booking = Booking.find(params[:id])
    @booking.update(status: "rejected")
    redirect_to my_booked_item_path(@booking), notice: "Status updated to #{@booking.status}"
  end

  private

  def set_item
    @item = Item.find(params[:item_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
