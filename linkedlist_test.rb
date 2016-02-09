gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'linkedlist'
require 'pry'

class LinkedlistTest < Minitest::Test

  def test_an_empty_linkedlist_has_nil_head_and_tail
    linkedlist = Linkedlist.new
    #binding.pry
    assert_equal nil, @head
    assert_equal nil, @tail
  end

  def test_new_nodes_have_nil_link
    node = Node.new("dep")
    assert_equal nil, @link
  end
  
  def test_you_can_append_a_node
    skip
    linkedlist = Linkedlist.new
    node = Node.new
    linkedlist.append(node)
  end

end
