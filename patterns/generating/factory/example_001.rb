# Пример: фабрика для создания различных типов автомобилей

# Интерфейс Vehicle
class Vehicle
  def drive
    raise NotImplementedError, "Метод 'drive' должен быть переопределен"
  end
end

# Конкретная реализация Vehicle - Car
class Car < Vehicle
  def drive
    puts "Водим на автомобиле"
  end
end

# Конкретная реализация Vehicle - Truck
class Truck < Vehicle
  def drive
    puts "Водим на грузовике"
  end
end

# Фабрика для создания экземпляров Vehicle
class VehicleFactory
  def self.create_vehicle(type)
    case type
      when :car
        Car.new
      when :truck
        Truck.new
      else
        raise ArgumentError, "Неверный тип транспортного средства"
    end
  end
end

# Пример использования
car = VehicleFactory.create_vehicle(:car)
truck = VehicleFactory.create_vehicle(:truck)

car.drive # Водим на автомобиле
truck.drive # Водим на грузовике

# В этом примере используется фабрика для создания различных типов транспортных средств без необходимости знать их конкретные классы.
#
# Паттерн Factory применяется в ситуациях, когда:
# 1. Клиентам нужно создавать объекты без зависимости от их конкретного типа.
# 2. Процесс создания объектов требует некоторой логики или параметризации.
# 3. Требуется абстрагировать создание объектов от клиентов, чтобы обеспечить легкость поддержки и расширения в будущем.