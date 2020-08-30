class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      # Context
      t.references :account, null: false, foreign_key: true
      t.references :employee, null: false, foreign_key: true

      # Content
      t.decimal :amount, null: false, default: 0
      t.text :description, null: true

      t.timestamps
    end
  end
end
