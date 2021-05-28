class AddUserToStudent < ActiveRecord::Migration[6.0]
  def change
    add_reference :students, :users, null: false, foreign_key: true
  end
end
