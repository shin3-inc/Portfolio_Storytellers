json.extract! event, :id, :tour_id, :event_title, :event_description, :start_time, :end_time, :created_at, :updated_at
json.url event_url(event, format: :json)
