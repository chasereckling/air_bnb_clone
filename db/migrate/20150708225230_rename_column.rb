class RenameColumn < ActiveRecord::Migration
  def change
    rename_column :listings, :type, :listingtype
  end
end
