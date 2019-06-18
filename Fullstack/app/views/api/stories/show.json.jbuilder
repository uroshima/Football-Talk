

json.story do
  json.extract! @story, :id, :title, :content, :subtitle, :author_id, :created_at
  if @story.photo.attached?
    json.photo url_for(@story.photo)
  end
end

json.user do
  json.extract! @story.author, :id, :email, :avatar, :name
end