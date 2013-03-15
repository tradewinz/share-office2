class AddEmailToRentestimates < ActiveRecord::Migration
  def change
    add_column :rentestimates, :email, :string
  end
end
