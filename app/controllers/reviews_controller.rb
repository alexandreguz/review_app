class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)

    respond_to do |format|
      if @review.save
        format.html { redirect_to good_path(id: review_params[:good_id]), notice: 'Review was successfully created.' }
      # format.json { render json: @good, status: :created, location: @good }
      else
        format.html { render action: "goods_path", notice: "Ops, your review was not saved" }
      #  format.json { render json: @good.errors, status: :unprocessable_entity }
      end
    end

  end




  private

  def review_params
    params.require(:review).permit(:opinion, :stars, :good_id)
  end
  end
