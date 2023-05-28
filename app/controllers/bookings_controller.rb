class BookingsController < ApplicationController
    # GET /bookings
    def index
      @bookings = Booking.all
    end
  
    # GET /bookings/:id
    def show
      @booking = Booking.find(params[:id])
    end
  
    # GET /bookings/new
    def new
      @booking = Booking.new
    end
  
    # POST /bookings
    def create
      @booking = Booking.new(booking_params)
      if @booking.save
        redirect_to @booking, notice: 'Booking was successfully created.'
      else
        render
  