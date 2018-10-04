class AddColorIntegerToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :color, :integer
  end
end
