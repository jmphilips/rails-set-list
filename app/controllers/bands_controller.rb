class BandsController < ApplicationController
  def index
    @bands = Band.all
  end

  def show
    get_band
  end

  def new
    @band = Band.new
  end

  def create
    create_band(params)
    @bands = Band.all
    render action: 'index'
  end

  private

  def get_band
    @band = Band.find(params[:id])
  end

  def create_band(params)
    band_data = params[:band]
    Band.create!(
      name: band_data[:name]
    )
  end
end
