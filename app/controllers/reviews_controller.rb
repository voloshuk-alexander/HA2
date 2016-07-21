class ReviewsController < ApplicationController
  def new
    end
    def create
      @reviews = Review.new(review_params)

    @reviews.save
    redirect_to @reviews
    end

    def show
       @reviews = Review.find(params[:id])
    end
private

 def review_params
    params.require(:reviews).permit(:rew)
  end
end
