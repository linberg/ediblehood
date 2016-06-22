class Location < ActiveRecord::Base
  validates_presence_of :email, :title, :latitude, :longitude
  validates :email, format: /\A\w+\S+[@]\w+\S+[.]\w+\S+\z/ 
  validates :title, format: string.lenght: >1
end

# /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/ could be another regular expression for the email-adress, but not neccesary