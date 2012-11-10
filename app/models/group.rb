class Group < ActiveRecord::Base
  has_many :tasks
  has_many :group_reviews
  has_many :follow_groups
  
  has_many :group_categories
  has_many :categories,:through => :group_categories
  
  has_many :user_groups
  has_many :users,:through => :user_groups
  #has_and_belongs_to_many :users

  def owner_user
    return User.find(self.owner)
  end
end
