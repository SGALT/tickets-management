class AddThingToStudent < ActiveRecord::Migration[6.0]
  def change
    add_reference :students, :user, null: false, foreign_key: true
  end
end
