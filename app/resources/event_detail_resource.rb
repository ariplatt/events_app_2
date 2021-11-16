class EventDetailResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :event_id, :integer
  attribute :event_name, :string
  attribute :event_location, :string

  # Direct associations

  # Indirect associations

end
