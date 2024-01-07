# Adaptee
class LegacyLogger
  def log(message)
    puts "Legacy logging: #{message}"
  end
end

# Target interface
class Logger
  def initialize(adaptee)
    @adaptee = adaptee
  end

  def log_message(message)
    @adaptee.log(message)
  end
end

# Client code
legacy_logger = LegacyLogger.new
logger = Logger.new(legacy_logger)
logger.log_message("This is a log message")