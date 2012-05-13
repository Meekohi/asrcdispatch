class DashboardController < ApplicationController
  def index
    @groups = Group.all
    @missions = Mission.all
  end
end
