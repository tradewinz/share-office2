class AddImageToRentestimates < ActiveRecord::Migration
  def change
    add_column :rentestimates, :image, :string
  end
end
