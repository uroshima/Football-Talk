json.extract! user, :id, :email
json.day user.created_at.day
json.month user.created_at.month
json.year user.created_at.year
json.currentUserFollows @currentUserFollows

if user.avatar.attached?
  json.avatar url_for(user.avatar)
end