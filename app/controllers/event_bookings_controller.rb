class EventBookingsController < ApplicationController
  before_action :set_event_booking, only: [:show, :edit, :update, :destroy]

  # GET /event_bookings
  # GET /event_bookings.json
  def index
    @event_bookings = EventBooking.all
  end

  # GET /event_bookings/1
  # GET /event_bookings/1.json
  def show
  end

  # GET /event_bookings/new
  def new
    @event_booking = EventBooking.new

  end

  # GET /event_bookings/1/edit
  def edit
  end

  # POST /event_bookings
  # POST /event_bookings.json
  def create
    @event_booking = EventBooking.new(event_booking_params)
    @event_booking.user_id = current_user.id
    @event_booking.event_id = params[:event_id]
    respond_to do |format|
      if @event_booking.save
        format.html { redirect_to event_path(@event_booking.event_id, booking_id: @event_booking.id), notice: 'Event booking was successfully created.' }
        format.json { render :show, status: :created, location: @event_booking }
      else
        format.html { render :new }
        format.json { render json: @event_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_bookings/1
  # PATCH/PUT /event_bookings/1.json
  def update
    respond_to do |format|
      if @event_booking.update(event_booking_params)
        format.html { redirect_to @event_booking, notice: 'Event booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_booking }
      else
        format.html { render :edit }
        format.json { render json: @event_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_bookings/1
  # DELETE /event_bookings/1.json
  def destroy
    @event_booking.destroy
    respond_to do |format|
      format.html { redirect_to event_bookings_url, notice: 'Event booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_booking
      @event_booking = EventBooking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_booking_params
      params.require(:event_booking).permit(:event_id, :user_id, :tickets, :total_price)
    end
end
