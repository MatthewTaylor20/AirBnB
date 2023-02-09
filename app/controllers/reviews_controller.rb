class ReviewsController < ApplicationController
  def new
    @review = Review.new
    render template: "reviews/new"
  end

  def create
    @review = Review.create(
      reservation_id: params[:reservation_id],
      rating: params[:rating],
      comment: params[:comment],
    )
    redirect_to "/rooms"
  end
end
