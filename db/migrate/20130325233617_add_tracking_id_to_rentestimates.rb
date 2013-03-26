class AddTrackingIdToRentestimates < ActiveRecord::Migration
  def change
    add_column :rentestimates, :trackingId, :string
  end
end
