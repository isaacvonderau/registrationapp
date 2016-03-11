class User < ActiveRecord::Base
  validates :user_name, uniqueness: true
  validates :password, presence: true
  validates :user_name, presence: true
end
