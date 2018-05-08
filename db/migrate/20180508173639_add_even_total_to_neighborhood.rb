class AddEvenTotalToNeighborhood < ActiveRecord::Migration[5.1]
  def change
    add_column :neighborhoods, :even_total, :integer
  end
end
