class ListingTable < ActiveRecord::Migration
  def change
    create_table(:listings) do |t|
      t.string :address
      t.string :type
      t.string :price
      t.integer :user_id

      t.timestamps
    end
  end
end
