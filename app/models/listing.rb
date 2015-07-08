class Listing < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :address
  validates_presence_of :listingtype
  validates_presence_of :price
end
