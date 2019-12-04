class Customer
  
  attr_accessor :name, :age
  
  @@all = []
  
  def initialize(name, age)
    @name = name
    @age = age 
    @@all << self

  end
  
  def self.all 
    @@all 
  end
  
  def new_meal(waiter, total, tip=0)
    Meal.new(waiter, self, total, tip)
  end
  
  def meals
    Meal.all.select{|m| m.customer == self}
  end
  
  def waiters 
    Waiter.all.select{|w| w.customer == self}
  end
  
  def 
  
end