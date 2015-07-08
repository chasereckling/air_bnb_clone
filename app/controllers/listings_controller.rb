class ListingsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @listings = Listing.all()
  end
end
