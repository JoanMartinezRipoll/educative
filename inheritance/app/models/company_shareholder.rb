#polymorphism
class CompanyShareholder < ActiveRecord::Base
  has_one :share_holder, as: :type
end
