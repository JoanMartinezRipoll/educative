class Person < ActiveRecord::Base
  #STI
  has_many :vehicles
  has_many :cars
  has_many :boats
end
