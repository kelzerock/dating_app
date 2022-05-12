json.extract! user, :id, :lgt, :lnt, :name, :src, :sex, :created_at, :updated_at
json.url user_url(user, format: :json)
