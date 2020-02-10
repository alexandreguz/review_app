class DashboardController < ApplicationController
  def show
  #  @contacts = ...
  #  @highlighted_goods = ...
  @my_last_goods = Good.last(10)
  end
end
