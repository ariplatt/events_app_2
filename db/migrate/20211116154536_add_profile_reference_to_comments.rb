class AddProfileReferenceToComments < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :comments, :event_details, column: :event_id
    add_index :comments, :event_id
    change_column_null :comments, :event_id, false
  end
end
