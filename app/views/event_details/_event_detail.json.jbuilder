json.extract! event_detail, :id, :event_id, :event_name, :event_location,
              :created_at, :updated_at
json.url event_detail_url(event_detail, format: :json)
