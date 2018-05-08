class AddOddTotalToNeighborhood < ActiveRecord::Migration[5.1]
  def change
    add_column :neighborhoods, :odd_total, :integer
  end
end
