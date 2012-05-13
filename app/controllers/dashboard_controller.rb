class DashboardController < ApplicationController
  def index
    @groups = Group.order("shortname")
    @missions = Mission.all    
  end
end
