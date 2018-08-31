class ConcertsController < ApplicationController
  def index
    @concerts = Concert.all
  end

  def new
    @concert = Concert.new
  end

  def create
    create_concert(params)
  end

  private

  def create_concert(params)
    concert_data = params[:concert]
    Concert.create!(
      band_id: 1,
      venue: concert_data[:venue],
      city: concert_data[:city],
      state: concert_data[:state],
      date: concert_data[:date]
    )
  end
end