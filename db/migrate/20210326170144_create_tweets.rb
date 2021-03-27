class CreateTweets < ActiveRecord::Migration[6.0]
  def up
    create_table :tweets do |t|
      t.string :content
      t.integer :user_id
      t.timestamps
    end
  end

  def down
    drop_table :users
  end
  
end