json.stories do
  @stories.each do |story|
    json.set! story.id do
      json.extract! story, :id, :title, :header, :body, :author_id
      json.date story.date
      json.readTime story.read_time

      if story.photo.attached?
        json.photo url_for(story.photo)
      end
    end
  end
end

json.users do
  @stories.each do |story|
    json.set! story.author.id do
      json.extract! story.author, :id, :email, :username
      if story.author.avatar.attached?
        json.avatar url_for(story.author.avatar)
      end
    end
  end
end