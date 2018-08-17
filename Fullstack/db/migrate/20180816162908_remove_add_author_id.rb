class RemoveAddAuthorId < ActiveRecord::Migration[5.2]
  def change
    remove_column(:stories, :author_id)
    add_column(:stories, :author_id , :integer)
  end
end
