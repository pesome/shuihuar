class Category < ActiveRecord::Base
    has_many :group_categories
    has_many :groups,:through => :group_categories
end
