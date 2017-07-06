class Location < ActiveRecord::Base
  belongs_to :region
  has_many :people

  def self.in_region(region)
    joins(:region).where(regions: {name: region})
  end

  def self.by_region_and_location_name
    joins(:region).merge(Region.order(:name)).order(:name)
  end
end
