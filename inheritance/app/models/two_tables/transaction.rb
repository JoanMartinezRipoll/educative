class Transaction < ActiveRecord::Base
  self.abstract_class = true
  belongs_to :banker
end
