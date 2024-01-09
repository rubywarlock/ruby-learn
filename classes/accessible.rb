class A
  VAR = "cool"
  @@rav = "hello"

  def out
    puts VAR
    @@rav = "#{@@rav} #{VAR}"
    puts @@rav
  end

  def not_cls_meth
    puts "NOT cls method"
    A.cls_meth

    #self.cls_meth # Error
  end

  def self.cls_meth
    puts "CLS Method"
  end
end

#A.new.out

#A.new.not_cls_meth

class B

  def self.public_cls_meth
    puts "B PUBLIC CLS Method"
  end

  public_cls_meth

  def self.cls_meth
    puts "B cls method"

    B.prot_cls_meth

    B.new.public_not_cls_meth
  end

  protected

  def prot_not_cls_meth
    puts "PROT B NOT cls Method"
  end

  def self.prot_cls_meth
    puts "PROT B CLS Method"
  end

  public

  def public_not_cls_meth
    puts "B NOT cls Method"

    prot_not_cls_meth
  end


end


B.cls_meth
B.new.public_not_cls_meth
B.prot_cls_meth