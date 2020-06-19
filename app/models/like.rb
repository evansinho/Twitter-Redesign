class Like < ApplicationRecord
  belongs_to :user, foreign_key: 'UserId', class_name: 'User'
  belongs_to :opinion, foreign_key: 'OpinionId', class_name: 'Opinion'
end
