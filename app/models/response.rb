class Response < ActiveRecord::Base
  attr_accessible :punishment, :appropriate_when
  
  belongs_to :punishment
  belongs_to :survey
end
