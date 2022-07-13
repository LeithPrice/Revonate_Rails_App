class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.integer :year
      t.string :month
      t.string :manufacturer
      t.string :model
      t.string :bodytype
      t.string :state
      t.integer :odometer
      t.string :colour
      t.integer :condition
      t.integer :seats
      t.integer :doors
      t.boolean :sold
      t.integer :price
      t.references :user, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
