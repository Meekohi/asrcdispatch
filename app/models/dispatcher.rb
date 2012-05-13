class Dispatcher < ActiveRecord::Base
  belongs_to :group, :inverse_of => :dispatcher
end
