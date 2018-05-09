class CreateHouses < ActiveRecord::Migration[5.1]
  def change
    create_table :houses do |t|
      t.integer :amount
      t.references :neighborhood, foreign_key: true

      t.timestamps
    end
  end
end
