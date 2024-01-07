# Receiver (Получатель) - класс, выполняющий конкретные действия
class Light
  def turn_on
    puts "Свет включен"
  end

  def turn_off
    puts "Свет выключен"
  end
end

# Command (Команда) - интерфейс, описывающий общие операции для всех команд
class Command
  def execute
    raise NotImplementedError, "Метод 'execute' должен быть переопределен"
  end
end

# ConcreteCommand (Конкретная команда) - классы, реализующие конкретные запросы
class TurnOnCommand < Command
  def initialize(light)
    @light = light
  end

  def execute
    @light.turn_on
  end
end

class TurnOffCommand < Command
  def initialize(light)
    @light = light
  end

  def execute
    @light.turn_off
  end
end

# Invoker (Инициатор) - класс, передающий запросы командам
class RemoteControl
  def initialize
    @commands = {}
  end

  def register(command_name, command)
    @commands[command_name] = command
  end

  def execute(command_name)
    @commands[command_name].execute
  end
end

# Пример использования
light = Light.new
turn_on = TurnOnCommand.new(light)
turn_off = TurnOffCommand.new(light)

remote = RemoteControl.new
remote.register(:turn_on, turn_on)
remote.register(:turn_off, turn_off)

remote.execute(:turn_on) # Свет включен
remote.execute(:turn_off) # Свет выключен

# В этом примере:
# - Light является получателем, представляющим объект, выполняющий конкретные действия.
# - Command - это интерфейс, предоставляющий метод execute.
# - TurnOnCommand, TurnOffCommand - это конкретные команды, реализующие метод execute для выполнения конкретных запросов.
# - RemoteControl - это инициатор, который регистрирует команды и запускает их выполнение.
#
# Паттерн Command позволяет создавать более гибкий код, где запросы могут быть параметризованы,
# ставиться в очередь или отменяться, и представлен как объект.