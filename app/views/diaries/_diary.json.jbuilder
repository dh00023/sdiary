json.extract! diary, :id, :category, :memo, :created_at, :updated_at
json.url diary_url(diary, format: :json)
