class Group < ActiveRecord::Base
  has_many :group_categories
  has_many :categories,:through => :group_categories
end
