class AddColumnToTickets < ActiveRecord::Migration[6.0]
  def change
    add_reference :tickets, :user, null: false, foreign_key: true
    add_reference :tickets, :student, null: false, foreign_key: true
  end
end
