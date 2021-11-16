class EventResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :event_id, :integer
  attribute :event_name, :string
  attribute :event_start_time, :string
  attribute :event_start_date, :date
  attribute :event_end_time, :string
  attribute :event_end_date, :date
  attribute :event_host_id, :integer
  attribute :event_host_name, :string
  attribute :photo, :string

  # Direct associations

  has_one    :event_detail

  belongs_to :event_goer,
             resource: ProfileResource,
             foreign_key: :event_id

  # Indirect associations
end
