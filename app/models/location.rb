class Location < ActiveRecord::Base
  validates_presence_of :title, :latitude, :longitude
end
