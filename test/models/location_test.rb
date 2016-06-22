require 'test_helper'

class LocationTest < ActiveSupport::TestCase

  test "takes a valid location" do
  	location = Location.new(email: "foo@bar.com", title: "pumpkin", latitude: 52.49041114406387, longitude: 13.466715645629847)
  	assert location.valid?
  end

  test "is invalid without email" do
    location = Location.new(title: "pumpkin", latitude: 52.49041114406387, longitude: 13.466715645629847)
    assert location.invalid?
  end

  test "is invalid without title" do
    location = Location.new(email: "foo@bar.com", latitude: 52.49041114406387, longitude: 13.466715645629847)
    assert location.invalid?
  end

  test "is invalid without latitude" do
    location = Location.new(email: "foo@bar.com", title: "pumpkin", longitude: 13.466715645629847)
    assert location.invalid?
  end

  test "takes a invalid email" do
  	location = Location.new(email: "foobar.com")
  	assert location.invalid?
  end

  test "takes a invalid latitude" do
    location = Location.new(latitude: 789)
    assert location.invalid?
  end

  test "takes a invalid longitude" do
    location = Location.new(longitude: 987)
    assert location.invalid?
  end


  # test "the truth" do
  #   assert true
  # end
end
