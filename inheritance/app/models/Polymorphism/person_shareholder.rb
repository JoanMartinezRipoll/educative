#polymorphism
class PersonShareholder < ActiveRecord::Base
  has_one :shareholder, as: :type
end
