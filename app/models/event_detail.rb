class EventDetail < ApplicationRecord
  # Direct associations

  belongs_to :event

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    event.to_s
  end

end
