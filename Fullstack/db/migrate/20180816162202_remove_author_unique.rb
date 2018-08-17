class RemoveAuthorUnique < ActiveRecord::Migration[5.2]
  def change
    change_column(:stories, :author_id , :integer)
  end
end
