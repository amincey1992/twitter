class CreateTweeetTags < ActiveRecord::Migration
  def change
    create_table :tweeet_tags do |t|
      t.integer :tweet_id
      t.integer :tag_id

      t.timestamps null: false
    end
  end
end
