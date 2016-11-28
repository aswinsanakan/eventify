json.extract! event_booking, :id, :event_id, :user_id, :created_at, :updated_at
json.url event_booking_url(event_booking, format: :json)