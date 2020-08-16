class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.text :description
      t.text :tax_info

      t.timestamps
    end
  end
end
