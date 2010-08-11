class Punishment < ActiveRecord::Base
  attr_accessible :name, :description

  has_many :responses
  
  def get_results(value)
    self.responses.find_all_by_appropriate_when(value).size
  end
  
end
