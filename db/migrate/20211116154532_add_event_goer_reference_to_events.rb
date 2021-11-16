class AddEventGoerReferenceToEvents < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :events, :profiles, column: :event_id
    add_index :events, :event_id
    change_column_null :events, :event_id, false
  end
end
