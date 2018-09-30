json.story do
  json.extract! @story, :id, :title, :content, :subtitle, :author_id, :created_at
end

json.user do
  json.extract! @story.author, :id, :email, :avatar, :name
end
