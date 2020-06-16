class CreateFollowings < ActiveRecord::Migration[6.0]
  def change
    create_table :followings do |t|
      t.integer :Followerid
      t.integer :Followedid
      t.timestamps
    end
  end
end
