class Project < ActiveRecord::Base
  include Commentable, Reversable
end
