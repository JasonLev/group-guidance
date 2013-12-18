class Guidance < ActiveRecord::Base
  attr_accessible :comment, :email, :name, :vote

  has_many :products
  has_many :users, :through => :products

  # validates_presence_of :email, :name, :vote
end
