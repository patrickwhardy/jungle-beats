require_relative 'node'
require 'minitest/autorun'
require 'minitest/pride'

class NodeTest < Minitest::Test
  def setup
    @node = Node.new(data=nil, link=nil)
  end

end
