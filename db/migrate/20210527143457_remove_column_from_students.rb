class RemoveColumnFromStudents < ActiveRecord::Migration[6.0]
  def change
    remove_reference :students, :user, null: false, foreign_key: true
  end
end
