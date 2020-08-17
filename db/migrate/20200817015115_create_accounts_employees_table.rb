class CreateAccountsEmployeesTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :accounts, :employees do |t|
      # Context
      t.index :account_id
      t.index :employee_id

      # Content
      t.datetime :expired_at
      t.decimal :balance
    end
  end
end
