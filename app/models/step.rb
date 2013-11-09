class Step < ActiveRecord::Base
  attr_accessible :complete, :description, :list_id

  belongs_to :list
  scope :complete, where(:complete => true)
  scope :incomplete, where(:complete => false)
end
