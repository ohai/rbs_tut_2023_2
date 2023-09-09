module Foobar
  class Calculator
    def initialize(x)
      @x = x
    end

    def plus_x(y)
      @x + y
    end

    def plus_rand(y)
      rand(10) + y
    end
  end
end
