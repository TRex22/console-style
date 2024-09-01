require 'console-style/version'
require 'console-style/functions'

module ConsoleStyle
  class Error < StandardError; end
end

# Append to Strings
class String
  def snakecase
    ConsoleStyle::Functions.snakecase(self)
  end
end
