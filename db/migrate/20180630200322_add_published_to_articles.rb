class AddPublishedToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :published, :boolean
  end
end
