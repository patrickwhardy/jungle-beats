require_relative 'node'
require 'pry'

class Linkedlist

  attr_accessor :head, :linkedlist

  def initialize(beats)
      @head = create_head(beats)
      init_list(beats)
  end

  def create_head(beats)
    #if @head == nil
      Node.new(beats.split[0])
    #end
  end

  def init_list(beats)
    #if @head != nil
      beats.split[1..-1].each do |beat|
        new_node = Node.new(beat)
        current_list = @head
        while current_list.link != nil do
          current_list = current_list.link
        end
          current_list.link = new_node
      end
    #end
  end

  def append(beats)
    beats.split.each do |beat|
      new_node = Node.new(beat)
      current_list = @head
      while current_list.link != nil do
        current_list = current_list.link
      end
        current_list.link = new_node
    end
  end

  def prepend(beats)
      current_list = @head
      @head = Node.new(beats.split[0])
      #this is in new head method????
      new_head = @head
      init_list(beats)
      while new_head.link != nil do
        new_head = new_head.link
      end
      new_head.link = current_list
  end

  def insert(i, beats)
    current_list = @head
    counter = 0
    until counter == i
      counter += 1
      current_list = current_list.link
    end
    current_list.link = append(beats)
  end

  # def includes?(node)
  #
  #   until node = head
  # end

  def pop
  end

  def count
  end

  def find
  end

  def all
  end

end

#binding.pry
