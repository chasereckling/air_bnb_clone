class ListingsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @listings = Listing.all()
  end

  def new
    @user = User.find(params[:user_id])
    @listing = Listing.new
  end

  def create
    @user = User.find(params[:user_id])
    @listing = @user.listings.new(listing_params)
    if @listing.save
      redirect_to user_listings_path(@user)
    else
      render :new
    end
  end

  private
  def listing_params
    params.require(:listing).permit(:address, :listingtype, :price)
  end
end
