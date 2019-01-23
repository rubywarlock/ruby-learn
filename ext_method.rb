module ExtensionMethods
  def global_ext_method
    puts 'global method ext_method of ExtensionMethods module'
  end
  
  class ExtClass
    def xt_class_method
      puts 'Ext "class" method in class ExtClass owned ExtensionMethods module'
    end
  end
end

module GlobMethods
  class Hello
    def hello
      puts 'Hello Class mthod owned GlobMethods module'
    end
  end
  
  def include_glob_methods
    include ExtensionMethods
  end
end

class ExtendedClass
  extend GlobMethods
end

class ExtensibleClass < ExtendedClass
  include_glob_methods
end
