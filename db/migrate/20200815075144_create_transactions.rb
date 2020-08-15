class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      # Context
      t.references :account, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      # Content
      t.integer :type
      t.decimal :amount
      t.text :description

      t.timestamps
    end
  end
end
