class Following < ApplicationRecord
  belongs_to :Follower, foreign_key: 'Followerid', class_name: 'User'
  belongs_to :Followed, foreign_key: 'Followedid', class_name: 'User'
end
