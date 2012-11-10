class User < ActiveRecord::Base
  has_many :tasks
  has_many :user_reviews
  has_many :follow_users
  has_many :user_groups
  has_many :groups,:through => :user_groups
  
  #has_and_belongs_to_many :groups
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

end
