class List < ActiveRecord::Base
  attr_accessible :name, :reason

  has_many :steps
end
