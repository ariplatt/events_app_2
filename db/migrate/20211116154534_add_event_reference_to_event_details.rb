class AddEventReferenceToEventDetails < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :event_details, :events
    add_index :event_details, :event_id
    change_column_null :event_details, :event_id, false
  end
end
