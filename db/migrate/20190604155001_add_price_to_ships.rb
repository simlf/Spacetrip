class AddPriceToShips < ActiveRecord::Migration[5.1]
  def change
    add_column :ships, :price, :integer, default: 0, null: false
  end
end
