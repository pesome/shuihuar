class User < ActiveRecord::Base
  has_many :tasks
  has_many :user_reviews
  has_many :follow_users
  has_many :user_groups
  has_many :groups,:through => :user_groups
end
