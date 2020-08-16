class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.date :joined_date
      t.references :location, null: false, foreign_key: true
      t.references :account, null: true, foreign_key: true

      t.timestamps
    end
  end
end
