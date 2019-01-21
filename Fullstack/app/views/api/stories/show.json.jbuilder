json.story do
  json.extract! @story, :id, :title, :header, :body, :author_id
  json.readTime @story.read_time
  json.date @story.date
  json.responses_array @story.responses.map {|response| response.id}
  json.totalClaps @story.totalClaps
  if @story.photo.attached?
    json.photo url_for(@story.photo)
  end
end

json.user do
  json.extract! @story.author, :id, :username, :biography
  json.currentUserFollows @currentUserFollows
  if @story.author.avatar.attached?
    json.avatar url_for(@story.author.avatar)
  end
end

json.responses do
  @story.responses.each do |response|
    json.set! response.id do
      json.extract! response, :id, :body, :story_id, :responder_id
      json.date response.date
      json.totalClaps = response.totalClaps
    end
  end
end