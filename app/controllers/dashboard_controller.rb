class DashboardController < ApplicationController  
  def index
    @groups = Group.order("shortname")
    @missions = Mission.where("status < 400 OR status >= 500")
  end
end
