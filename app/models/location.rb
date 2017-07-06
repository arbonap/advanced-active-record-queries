class Location < ActiveRecord::Base
  belongs_to :region
  has_many :people

  def self.in_region(region)
    Location.all.joins(:region).where(regions: {name: region})
  end
end
