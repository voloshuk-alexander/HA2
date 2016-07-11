class HotelsController < ApplicationController
  def index
  end
  def create
    @hotels = Hotel.new(hotel_params)

  @hotels.save
  redirect_to @hotels
  end
  def show
     @hotels = Hotel.find(params[:id])
  end
  def new
    end

    private

   def hotel_params
     params.require(:hotels).permit(:name,:photo, :description,:price,:count_name, :state, :city, :street)
   end
end
