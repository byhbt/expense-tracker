class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      # Content
      t.string :name
      t.decimal :balance
      t.date :expired_at, null: true
      t.text :description, null: true

      t.timestamps
    end
  end
end
