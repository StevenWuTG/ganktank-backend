class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :content
      t.string :video_url
      t.string :img_url
      t.string :author
      t.belongs_to :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
