class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.integer :event_id
      t.string :event_name
      t.time :event_start_time
      t.date :event_start_date
      t.time :event_end_time
      t.date :event_end_date
      t.integer :event_host_id
      t.string :event_host_name
      t.string :photo

      t.timestamps
    end
  end
end
