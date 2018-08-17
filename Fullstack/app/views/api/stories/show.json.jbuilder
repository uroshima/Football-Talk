json.story do
  json.extract! @story, :id, :title, :content, :subtitle, :author_id
end

json.user do
  json.extract! @story.author, :id, :email
end
