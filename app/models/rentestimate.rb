class Rentestimate < ActiveRecord::Base
  attr_accessible :industry, :subindustry, :location, :rent, :size, :image, :email
  
  mount_uploader :image, ImageUploader
  
  validates(:industry, presence: true)
  validates(:location, presence: true)

end
