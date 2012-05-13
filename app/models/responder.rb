class Responder < ActiveRecord::Base
  has_many :memberships
  has_many :groups, :through => :memberships
  
  validates :email, :format => { :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/ }
  
  def name
    "#{self.firstname} #{self.lastname}"
  end
end
