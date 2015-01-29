class PlacesController < ApplicationController
  def index
    if params[:search].present?
      @places = Place.near(params[:search], 50, :order => :distance)
    else
      @places = Place.all
    end
  end

  def show
    @place = Place.find(params[:id])
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(params[:location])
    if @place.save
      redirect_to @place, :notice => "Successfully created location."
    else
      render :action => 'new'
    end
  end
end
