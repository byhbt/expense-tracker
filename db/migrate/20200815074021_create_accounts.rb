class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      # Context
      t.references :user, null: false, foreign_key: true

      # Content
      t.string :name
      t.decimal :balance
      t.date :expired_at
      t.text :description

      t.timestamps
    end
  end
end
