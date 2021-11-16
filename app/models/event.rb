class Event < ApplicationRecord
  # Direct associations

  belongs_to :event_goer,
             :class_name => "Profile",
             :foreign_key => "event_id"

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    event_goer.to_s
  end

end
