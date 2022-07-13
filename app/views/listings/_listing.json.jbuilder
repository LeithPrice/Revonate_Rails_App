json.extract! listing, :id, :year, :month, :manufacturer, :model, :bodytype, :state, :odometer, :colour, :condition, :seats, :doors, :sold, :price, :description, :user_id, :category_id, :created_at, :updated_at
json.url listing_url(listing, format: :json)
json.description listing.description.to_s
