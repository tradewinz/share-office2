class CreateRentestimates < ActiveRecord::Migration
  def change
    create_table :rentestimates do |t|
      t.string :industry
      t.string :location
      t.string :size
      t.string :rent

      t.timestamps
    end
  end
end
