class AddSubindustryToRentestimates < ActiveRecord::Migration
  def change
    add_column :rentestimates, :subindustry, :string
  end
end
