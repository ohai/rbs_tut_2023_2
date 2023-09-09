require_relative 'version'
require_relative 'calculator'

module Foobar
  class EntryPoint
    def start
      print_usage_and_exit if ARGV.empty?
      print_usage_and_exit if ARGV[0] == "-h"
      print_version_and_exit if ARGV[0] == "-v"
      run(Integer(ARGV[0]))
    end

    def run(n)
      calculator = Foobar::Calculator.new(n)
      puts(calculator.plus_x(2))
      puts(calculator.plus_rand(5))
    end

    def print_usage_and_exit
      puts("foobar [options]")
      exit
    end

    def print_version_and_exit
      puts(Foobar::VERSION)
      exit
    end
  end
end
