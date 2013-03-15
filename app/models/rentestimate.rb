class Rentestimate < ActiveRecord::Base
  attr_accessible :industry, :location, :rent, :size, :email
  
  validates(:industry, presence: true)
  validates(:location, presence: true)

end
