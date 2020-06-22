class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.integer :UserId
      t.integer :OpinionId
      t.timestamps
    end
  end
end
