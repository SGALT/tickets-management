class RemoveThingFromTickets < ActiveRecord::Migration[6.0]
  def change
    remove_reference :tickets, :user, null: false, foreign_key: true
  end
end
