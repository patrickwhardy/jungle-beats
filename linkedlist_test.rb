gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'linkedlist'
require 'pry'

class LinkedlistTest < Minitest::Test

  # def test_string_inputs_become_nodes
  #   linkedlist = Linkedlist.new
  #   linkedlist.string_to_node("dep")
  #   assert_equal new_node,

  def test_new_nodes_have_nil_link
    node = Node.new("dep")
    assert_equal nil, @link
  end

  def test_new_node_linked_in_previous_node
    skip
    linkedlist = Linkedlist.new("dep do dee")
    linkedlist.append("dee")
    assert_equal "dep", linkedlist.head
  end

  def test_prepend_adds_data_to_front_of_list
    linkedlist = Linkedlist.new("dep do dee")
    linkedlist.prepend("dee")
    assert_equal "dee", linkedlist.head.data
  end

  def test_instert_adds_a_node_at_i
    linkedlist = Linkedlist.new("dep do dee")
    linkedlist.insert(1, "bo")
    assert_equal "bo", linkedlist.head.link.data
  end

end
