class User < ActiveRecord::Base
  # validating uniqueness in username 
  validates :user_name, uniqueness: true

  # rails equivalent to require
  validates :password, presence: true
  validates :user_name, presence: true
end
