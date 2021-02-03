module InvoiceHoursClass
  class InvoiceHours
    attr_accessor :hours

    def initialize
      @hours = nil
    end
  end
end

class A
  attr_accessor :invoice

  def initialize
    @invoice = InvoiceHours.new
  end
end

A.send(:include, InvoiceHoursClass)

a = A.new

a.invoice.hours = 100

puts a.invoice.hours