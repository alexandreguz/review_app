class GoodsController < ApplicationController
  def show
    @good = Good.find(params[:id])
    @review = Review.new
  end

  def new
    @good = Good.new
  end

  def create
    @good = Good.new(good_params)

    respond_to do |format|
      if @good.save
        format.html { redirect_to @good, notice: 'good was successfully created.' }
        format.json { render json: @good, status: :created, location: @good }
      else
        format.html { render action: "new" }
        format.json { render json: @good.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @good = Good.find(params[:id])
  end

  def update
    @good = Good.find(params[:id])

    respond_to do |format|
      if @good.update(good_params)
        format.html { redirect_to @good, notice: 'good was successfully updated.' }
        format.json { render json: @good, status: :created, location: @good }
      else
        format.html { render action: "edit" }
        format.json { render json: @good.errors, status: :unprocessable_entity }
      end
    end
  end


  private

  def good_params
    params.require(:good).permit(:product, :brand, :image)
  end
end
