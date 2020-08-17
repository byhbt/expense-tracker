class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      # Context
      t.references :location, null: false, foreign_key: true
      t.references :account, null: true, foreign_key: true

      # Content
      t.string :first_name
      t.string :last_name
      t.datetime :joined_at

      t.timestamps
    end
  end
end
