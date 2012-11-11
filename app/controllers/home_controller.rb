class HomeController < ApplicationController
  before_filter :authenticate_user!
  def index
    @it_groups = Category.find(1).groups.limit(3)
    @benefit_groups = Category.find(2).groups.limit(3)
    @travel_groups = Category.find(3).groups.limit(3)
  end
end
