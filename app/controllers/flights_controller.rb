class FlightsController < ApplicationController
  before_action :set_flight, only: %i[ show edit update destroy ]

  # GET /flights or /flights.json
  def index
    @flights = Flight.all
    @airports = @flights.map(&:adep).uniq
    @departures = []
    @arrivals = []

    @airports.each do |a|
      arr = [a.name, a.id]
      @departures << arr
      @arrivals << arr
    end

    return unless params.key?(:search)
    @pax = params[:search][:pax]
    @date = params[:search][:date]
    @selected = @flights.where(adep: params[:search][:adep], ades: params[:search][:ades], date: Date.parse(params[:search][:date]).strftime('%a')).to_a
  end

  private

  def search_params
    params.require(:search).permit(:adep, :ades, :pax, :date)
  end
end
