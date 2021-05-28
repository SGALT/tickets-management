class RemoveColumnFromTickets < ActiveRecord::Migration[6.0]
  def change
    remove_reference :tickets, :users, null: false, foreign_key: true
    remove_reference :tickets, :students, null: false, foreign_key: true
  end
end
