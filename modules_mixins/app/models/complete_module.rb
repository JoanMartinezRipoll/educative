module CompleteModule
  #Here I add the statements I want to add to the class,
  #like has_one, has_many, belongs_to, validations etc...
  def self.included(base)
    base.class_eval do
      has_many :comments, as: :commentable
    end
    #it is possible to write class methods as follows. Remember, includes adds methods to the instance
    #variables, extends adds class methods, and requires is like a java include, so it just adds
    #the library.
    base.extend(ClassMethods)
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
