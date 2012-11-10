class Task < ActiveRecord::Base
  belongs_to :user
  belongs_to :group
  has_many :task_reviews
end
