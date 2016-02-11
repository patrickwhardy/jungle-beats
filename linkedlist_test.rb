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

  # def test_new_node_linked_in_previous_node
  #   skip
  #   linkedlist = Linkedlist.new("dep do dee")
  #   linkedlist.append("dee")
  #   assert_equal "dep", linkedlist.head
  # end

  def test_prepend_adds_data_to_front_of_list
    linkedlist = Linkedlist.new("dep do dee")
    linkedlist.prepend("dee")
    assert_equal "dee", linkedlist.head.data
  end

  def test_insert_adds_a_node_at_i
    linkedlist = Linkedlist.new("dep do dee")
    linkedlist.insert(2, "bo")
    assert_equal "dep do bo dee", linkedlist.all
  end

  def test_includes_checks_if_beat_exists
    skip
    linkedlist = Linkedlist.new("dep do dee")
    assert linkedlist.includes?("dep")
    refute linkedlist.includes?("ljadhae")
  end

  def test_pop_removes_i_beats_from_end_of_list
    skip
    linkedlist = Linkedlist.new("dep do dee")
    assert_equal "do dee", linkedlist.pop
  end

  def test_counter_returns_number_of_items_in_list
    linkedlist = Linkedlist.new("dep do dee")
    assert_equal 3, linkedlist.count
  end

  def test_all_returns_string_of_all
    linkedlist = Linkedlist.new("dep do dee")
    assert_equal "dep do dee", linkedlist.all
  end

  def test_play_returns_count
    linkedlist = Linkedlist.new("dep do dee")
    assert_equal 3, linkedlist.play
  end

  def test_find_returns_string_of_data
    linkedlist = Linkedlist.new("dep do dee")
    assert_equal "do dee ", linkedlist.find(1, 2)
  end

end
