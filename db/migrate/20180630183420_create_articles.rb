class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.datetime :entry_at, presence: true
      t.string :title, presence: true
      t.text :content

      t.timestamps
    end
  end
end
