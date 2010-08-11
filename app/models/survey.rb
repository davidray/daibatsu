class Survey < ActiveRecord::Base
  attr_accessible :submitted_by

  has_many :responses, :dependent => :destroy  
  
  accepts_nested_attributes_for :responses
  
end
