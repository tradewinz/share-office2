class Qborentestimate < ActiveRecord::Base
  attr_accessible :email, :image, :industry, :location, :rent, :size, :subindustry, :trackingId

  validates(:industry, presence: true)
  validates(:location, presence: true)

end
