class Extender
  def self.module_exist?(name)
    Module.const_defined?(name)
  end

  def self.extend_of(module_name)
    inject("extend", module_name)
  end

  def self.enclude_of(module_name)
    inject("include", module_name)
  end

  def self.inject(context, module_name)
    if module_exist?(module_name.capitalize)
      eval("#{context} #{module_name.capitalize}")
    end
  end
end

module A
  def hello
    puts "cool"
  end
end

class B < Extender
  extend_of :a
  enclude_of :a
end

B.new.hello
B.hello