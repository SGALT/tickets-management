class RemoveTeacherFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :teacher, :boolean
  end
end
