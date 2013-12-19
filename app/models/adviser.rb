class Adviser < ActiveRecord::Base
  attr_accessible :email, :name, :user_id

  belongs_to :user
  has_many :guidances

  validates_presence_of :name, :email, :user_id
end
