class CreateJoinGroupAndExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :join_group_and_expenses do |t|
      t.references :groups, foreign_key: true
      t.references :expense, foreign_key: true

      t.index [:group_id, :expense_id]
      t.index [:expense_id, :group_id]

      t.timestamps
    end
  end
end
