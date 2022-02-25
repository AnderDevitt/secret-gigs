json.extract! gig, :id, :name, :date, :area, :tickets, :price, :user_id, :created_at, :updated_at
json.url gig_url(gig, format: :json)
