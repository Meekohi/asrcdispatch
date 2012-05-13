class Group < ActiveRecord::Base
  has_many :memberships
  has_many :responders, :through => :memberships
end
