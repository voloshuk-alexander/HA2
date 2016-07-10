class HotelsController < ApplicationController
  def index
  end
  def new
     @hotel = Hotel.new
  end
end
