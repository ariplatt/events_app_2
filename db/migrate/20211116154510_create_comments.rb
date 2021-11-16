class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :event_id
      t.time :comment_time
      t.date :comment_date
      t.text :comment_text

      t.timestamps
    end
  end
end
