module ConsoleStyle
  module Functions
    extend self
    # TODO: handle emoji compatibility

    GREEN = 32
    RED = 31
    CYAN = 36

    GOOD = "\t✅".freeze
    BAD = "\t⭕".freeze
    NO = "\t❌".freeze

    # Printing commands
    def style(str, style_code)
      "\e[#{style_code}m#{str}\e[0m"
    end

    def space(size)
      (1..size).map { |_| " " }.join("")
    end

    def print_heading(text)
      line = '################################'
      puts line

      buffer = (line.size / 2) - (text.size / 2) - 2
      buffer = 1 if buffer < 1

      output = "#{space(buffer)}#{text}#{space(buffer)}"
      output += ' ' if output.size < line.size

      puts "##{output}#"

      puts line
    end

    # Execute commands
    def execute(command)
      `#{command}`.gsub(" \n", '').gsub("\n", '')
    end

    def execute_with_new_line(command)
      `#{command}`
    end

    def execute_split_lines(command)
      `#{command}`.split("\n")
    end
  end
end
