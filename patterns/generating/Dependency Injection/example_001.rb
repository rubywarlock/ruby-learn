# Пример: Внедрение зависимости для работы с базой данных

# Класс, использующий внедрение зависимостей для работы с базой данных
class UserRepository
  def initialize(database)
    @database = database
  end

  def find_user(id)
    @database.query("SELECT * FROM users WHERE id = #{id}")
  end
end

# Пример использования
class Database
  def query(sql)
    # Код для выполнения SQL-запроса
    puts "Выполнен запрос: #{sql}"
  end
end

# Создаем экземпляр базы данных
database = Database.new

# Внедряем зависимость в UserRepository
user_repository = UserRepository.new(database)

# Выполняем запрос через UserRepository
user_repository.find_user(123)

# В этом примере:
# - UserRepository принимает зависимость database при инициализации.
#   Это позволяет внедрить объект базы данных для выполнения запросов без необходимости создавать его внутри UserRepository.
# - Database является отдельным объектом, который представляет работу с базой данных.