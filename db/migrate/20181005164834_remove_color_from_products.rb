class RemoveColorFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :color, :integer
  end
end
