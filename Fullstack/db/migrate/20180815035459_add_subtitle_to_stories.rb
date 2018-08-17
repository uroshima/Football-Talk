class AddSubtitleToStories < ActiveRecord::Migration[5.2]
  def change
    add_column :stories, :subtitle, :text
  end
end
