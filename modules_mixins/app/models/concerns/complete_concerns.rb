module CompleteConcerns
  extend ActiveSupport::Concern

  #Here I add the statements I want to add to the class,
  #like has_one, has_many, belongs_to, validations etc...
  included do
    has_many :comments, as: :commentable
  end

  #Here the class methods are defined
  module ClassMethods
    def shout!
      puts "Look out!"
    end
  end

  #Instance methods are defined here
  def reverse
    puts content.reverse
  end

end
