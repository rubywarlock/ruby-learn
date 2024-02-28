module FactoryMethod
  # Product
  class Product
    def class_name = self.class.name.split('::').last
  end

  # ConcreteProductA
  class ConcreteProductA < Product; end

  # ConcreteProductB
  class ConcreteProductB < Product; end

  # Creator
  class Creator
    def factoryMethod = Product.new
  end

  # ConcreteCreatorA
  class ConcreteCreatorA < Creator
    def factoryMethod = ConcreteProductA.new
  end

  # ConcreteCreatorB
  class ConcreteCreatorB < Creator
    def factoryMethod = ConcreteProductB.new
  end
end

# Client
module Client
  include FactoryMethod

  creators = [ConcreteCreatorA.new, ConcreteCreatorB.new]

  creators.each do |creator|
    puts "#{creator.class} create Product:\t #{creator.factoryMethod.class_name}"
  end

  # => FactoryMethod::ConcreteCreatorA create Product:  ConcreteProductA
  # => FactoryMethod::ConcreteCreatorB create Product:  ConcreteProductB
end

# FactoryMethod::ConcreteCreatorA create Product:	 FactoryMethod::ConcreteProductA
# FactoryMethod::ConcreteCreatorB create Product:	 FactoryMethod::ConcreteProductB