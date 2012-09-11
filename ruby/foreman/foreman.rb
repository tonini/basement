require 'minitest/autorun'


module Kernel
  alias :build :describe

  def __
    ["PLEASE FILL IN THE RIGHT ANSWER!"]
  end
end

class MiniTest::Spec
  class << self; alias :craft :it end
end
