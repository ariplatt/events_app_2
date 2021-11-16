json.extract! event, :id, :event_id, :event_name, :event_start_time, :event_start_date, :event_end_time, :event_end_date, :event_host_id, :event_host_name, :photo, :created_at, :updated_at
json.url event_url(event, format: :json)
