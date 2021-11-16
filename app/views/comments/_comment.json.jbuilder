json.extract! comment, :id, :event_id, :comment_time, :comment_date,
              :comment_text, :created_at, :updated_at
json.url comment_url(comment, format: :json)
