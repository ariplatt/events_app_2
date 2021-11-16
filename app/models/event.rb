class Event < ApplicationRecord
  # Direct associations

  has_one    :event_detail,
             :dependent => :destroy

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
