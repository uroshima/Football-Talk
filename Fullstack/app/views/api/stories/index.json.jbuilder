json.stories do
  @stories.each do |story|
    json.set! story.id do
      json.extract! story, :id, :title, :content, :subtitle, :author_id
      if story.photo.attached?
        json.photo url_for(story.photo)
      end
    end
  end
end

json.users do
  @stories.each do |story|
    json.set! story.author_id do
      json.extract! story.author, :id, :email
    end
  end
end
