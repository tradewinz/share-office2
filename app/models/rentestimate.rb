class Rentestimate < ActiveRecord::Base
  attr_accessible :industry, :subindustry, :location, :rent, :size, :image, :email, :trackingId, :created_at, :updated_at

  validates(:industry, presence: true)
  validates(:location, presence: true)

end
