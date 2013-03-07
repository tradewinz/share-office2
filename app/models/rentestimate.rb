class Rentestimate < ActiveRecord::Base
  attr_accessible :industry, :location, :rent, :size
  
  validates(:industry, presence: true)
  validates(:location, presence: true)

end
