
class FlightsController < ApplicationController
  before_action :flight_all
  def index

    # @flights = Flight.all
    @avail_flights = Flight.where(arrival_airport_id: params[:arrival_airport_id],departure_airport_id: params[:departure_airport_id] )


    @flight_options= Airport.all.map{ |u| [ u.code,u.id ] }
    @flight_options1 = Flight.all.map{|f| [f.start_datetime,f.start_datetime]}
    
    # @avail_f  light = Flight.select(arrival_airport :params[:sri])
   
  end

  def show
  # @flights = Flight.all

  end
  private
  def flight_all
    @flights = Flight.all
  end

end
