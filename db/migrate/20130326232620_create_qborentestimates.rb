class CreateQborentestimates < ActiveRecord::Migration
  def change
    create_table :qborentestimates do |t|
      t.string :industry
      t.string :location
      t.string :size
      t.string :rent
      t.string :email
      t.string :image
      t.string :subindustry
      t.string :trackingId

      t.timestamps
    end
  end
end
