class Survey < ActiveRecord::Base
  attr_accessible :submitted_by, :responses_attributes

  has_many :responses, :dependent => :destroy  
  
  accepts_nested_attributes_for :responses
  
end
