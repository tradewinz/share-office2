class Rentestimate < ActiveRecord::Base
  attr_accessible :industry, :subindustry, :location, :rent, :size, :image, :email, :trackingId

  validates(:industry, presence: true)
  validates(:location, presence: true)

end
