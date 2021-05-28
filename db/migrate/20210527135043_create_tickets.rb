class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.references :users, null: false, foreign_key: true
      t.references :students, null: false, foreign_key: true
      t.integer :state

      t.timestamps
    end
  end
end
