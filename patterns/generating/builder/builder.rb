# Паттерн Builder (Строитель) относится к порождающим паттернам проектирования
# и используется для создания объектов с различной конфигурацией,
# обеспечивая пошаговое создание сложных объектов.


# Пример: Строитель для поэтапного создания компьютера
# Product (Продукт) - конечный создаваемый объект
class Computer
  attr_accessor :display, :keyboard, :mouse, :printer

  def to_s
    "Computer: display=#{display}, keyboard=#{keyboard}, mouse=#{mouse}, printer=#{printer}"
  end
end

# Abstract Builder (Абстрактный строитель) - интерфейс для создания объектов
class ComputerBuilder
  attr_reader :computer

  def initialize
    @computer = Computer.new
  end

  def reset
    @computer = Computer.new
  end

  def build_display
    raise NotImplementedError, "Метод 'build_display' должен быть переопределен"
  end

  def build_keyboard
    raise NotImplementedError, "Метод 'build_keyboard' должен быть переопределен"
  end

  def build_mouse
    raise NotImplementedError, "Метод 'build_mouse' должен быть переопределен"
  end

  def build_printer
    raise NotImplementedError, "Метод 'build_printer' должен быть переопределен"
  end
end

# Concrete Builder (Конкретный строитель) - реализация создания объекта
class DesktopComputerBuilder < ComputerBuilder
  def build_display
    @computer.display = 'Desktop Display'
  end

  def build_keyboard
    @computer.keyboard = 'Desktop Keyboard'
  end

  def build_mouse
    @computer.mouse = 'Desktop Mouse'
  end

  def build_printer
    @computer.printer = 'Desktop Printer'
  end
end

class LaptopComputerBuilder < ComputerBuilder
  def build_display
    @computer.display = 'Laptop Display'
  end

  def build_keyboard
    @computer.keyboard = 'Laptop Keyboard'
  end

  def build_mouse
    @computer.mouse = 'Laptop Mouse'
  end

  def build_printer
    # Нет принтера у ноутбука
  end
end

# Director (Директор) - управляет созданием объектов используя строителя
class ComputerManufacturer
  attr_accessor :builder

  def initialize(builder)
    @builder = builder
  end

  def build_computer
    builder.reset
    builder.build_display
    builder.build_keyboard
    builder.build_mouse
    builder.build_printer
    builder.computer
  end
end

# Пример использования
desktop_builder = DesktopComputerBuilder.new
manufacturer = ComputerManufacturer.new(desktop_builder)
desktop_computer = manufacturer.build_computer
puts desktop_computer

laptop_builder = LaptopComputerBuilder.new
manufacturer = ComputerManufacturer.new(laptop_builder)
laptop_computer = manufacturer.build_computer
puts laptop_computer


# В этом примере:
#   - Computer представляет конечный создаваемый объект.
#   - ComputerBuilder является абстрактным классом, задающим интерфейс для создания объектов.
#   - DesktopComputerBuilder и LaptopComputerBuilder представляют конкретные строителей для создания объектов различных типов.
#     - ComputerManufacturer играет роль директора и управляет созданием объектов, используя строителя.