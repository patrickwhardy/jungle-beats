require_relative 'node'
require 'pry'

class Linkedlist

  attr_accessor :head, :linkedlist

  def initialize(beats)
    @head = create_head(beats)
    init_list(beats)
  end

  def create_head(beats)
    Node.new(beats.split[0])
  end

  def init_list(beats)
    beats.split[1..-1].each do |beat|
      new_node = Node.new(beat)
      current_list = @head
      while current_list.link != nil do
        current_list = current_list.link
      end
      current_list.link = new_node
    end
  end

  def append(beats)
    counter = 0
    beats.split.each do |beat|
      new_node = Node.new(beat)
      current_list = @head
      while current_list.link != nil do
        current_list = current_list.link
        counter += 1
      end
      current_list.link = new_node
    end
    counter - 1
  end

  def prepend(beats)
    current_list = @head
    counter = 0
    @head = Node.new(beats.split[0])
    new_head = @head
    init_list(beats)
    while new_head.link != nil do
      new_head = new_head.link
      counter += 1
    end
    new_head.link = current_list
    counter
  end

  def insert(i, beats)
    beats.split.each do |beat|
      current_list = @head
      new_node = Node.new(beat)
      counter = 0
      nodes_read = ""
      until counter == i do
        counter += 1
        nodes_read = (nodes_read + current_list.data + " ")
        current_list = current_list.link
      end
      unread_nodes = current_list
      @head = Node.new(nodes_read.split[0])
      init_list(nodes_read.chop)
      @head = head
      while head.link != nil do
        head = head.link
      end
      head.link = unread_nodes
      @head = head
    end
    all
  end

  def includes?(beat)
    current_list = @head
    while current_list.data != beat do
      current_list = current_list.link
      if current_list.data == nil
        false
        break
      end
    end
    true
  end


  def pop(i)
    current_list = @head
    counter = 0
    popped_list = ""
    while current_list.link != nil do
      current_list = current_list.link
    end
    until counter == i do
      counter +=1
      popped_list + current_list.data
      current_list.data = nil
    end
    popped_list
  end

  def count
    current_list = @head
    counter = 1
    while current_list.link != nil do
      counter += 1
      current_list = current_list.link
    end
    counter
  end

  def find(position, number)
    counter = 0
    found = ""
    current_list = @head
    until counter == position do
      counter += 1
      current_list = current_list.link
    end
    number.times do
      found.concat(current_list.data + " ")
      current_list = current_list.link
    end
    found
  end

  def all
    all_list = ""
    current_list = @head
    while current_list.link != nil do
      all_list.concat(current_list.data + " ")
      current_list = current_list.link
    end
    all_list.concat(current_list.data)
    all_list
  end

  def play
    `say -r 500 -v Boing #{all}`
    count
  end

end
