class Location < ActiveRecord::Base
  validates_presence_of :email, :title, :latitude, :longitude

end

