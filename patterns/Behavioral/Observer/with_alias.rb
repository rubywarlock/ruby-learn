class Observer
  def observe(original_method_name:, object:)
    observer_method = "observer_#{original_method_name}".to_sym
    alias_method = "alias_#{original_method_name}".to_sym

    object.class_eval do
      alias_method(alias_method, original_method_name)

      define_method(observer_method) do |*attr, **hash, &block|
        puts "===================================="
        puts "================ FROM OBSERVER ====="
        puts("Observer Method for #{original_method_name}")
        puts("attr: #{attr}")
        puts("hash: #{hash}")
        puts("class name: #{@name}")

        yield(@name) if block_given?

        puts '------------------------------------'
        send(alias_method, *attr, **hash)
      end

      alias_method original_method_name, observer_method
    end
  end
end

class A
  def initialize(name)
    @name = name
  end

  def method_a(attr)
    from("Original Method A #{attr}")
  end

  def method_b
    from("Original Method B")
  end

  private

  def from(text)
    puts "---------- from original -----------"
    puts "#{text}"
    puts "===================================="
    puts
  end
end

observer = Observer.new
observer.observe(original_method_name: :method_a, object: A) do |name|
  puts "from block. name: #{name}. method_a"
end

observer.observe(original_method_name: :method_b, object: A) do |name|
  puts "from block. name: #{name}. method_b"
end

a = A.new("'Class A Name'")
a.method_a("COOL")
a.method_b
