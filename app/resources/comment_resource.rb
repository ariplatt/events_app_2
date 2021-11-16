class CommentResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :email, :string
  attribute :password, :string
  attribute :event_id, :integer
  attribute :comment_time, :string
  attribute :comment_date, :date
  attribute :comment_text, :string

  # Direct associations

  # Indirect associations

end
