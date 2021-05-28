class RemoveUsersFromStudents < ActiveRecord::Migration[6.0]
  def change
    remove_reference :students, :users, null: false, foreign_key: true
  end
end
