class Punishment < ActiveRecord::Base
  attr_accessible :name, :description

  has_many :responses
end
