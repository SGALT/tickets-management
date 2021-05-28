class AddMessageToTickets < ActiveRecord::Migration[6.0]
  def change
    add_column :tickets, :message, :text
  end
end
