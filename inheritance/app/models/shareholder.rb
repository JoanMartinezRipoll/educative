#polymorphism
class Shareholder < ActiveRecord::Base
  belongs_to :type, polymorphic: true
  validates_uniqueness_of :type_id, scope: :type_type
end
