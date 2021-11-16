class EventDetail < ApplicationRecord
  # Direct associations

  has_many   :comments,
             foreign_key: "event_id",
             dependent: :destroy

  belongs_to :event

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    event.to_s
  end
end
