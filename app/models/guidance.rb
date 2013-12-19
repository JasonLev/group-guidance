class Guidance < ActiveRecord::Base
  attr_accessible :comment, :adviser_id, :product_id, :vote

  belongs_to :products
  belongs_to :adviser

  # validates_presence_of :vote
end
