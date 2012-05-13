class Group < ActiveRecord::Base
  has_many :memberships
  has_many :responders, :through => :memberships
  has_one :dispatcher, :inverse_of => :group
end
