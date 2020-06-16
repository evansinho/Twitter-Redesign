class User < ApplicationRecord
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 25 }
  validates :fullname, presence: true, length: { minimum: 3, maximum: 100 }
end
