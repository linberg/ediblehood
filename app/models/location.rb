class Location < ActiveRecord::Base
  validates_presence_of :email, :title, :latitude, :longitude
  validates :email, format: /\A\w+\S+[@]\w+\S+[.]\w+\S+\z/
  		
end

