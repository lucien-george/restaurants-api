json.extract! @restaurant, :id, :name, :address
json.owner do
  json.id @restaurant.user.id
  json.email @restaurant.user.email
end
json.comments do
  json.array! @restaurant.comments do |comment|
    json.id comment.id
    json.content comment.content
  end
end
