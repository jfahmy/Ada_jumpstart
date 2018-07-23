

class Node
  attr_accessor  :value, :next_node

  #the next_note variable serves as the pointer to the following entry in the linked list
  #value will hold the data for each entry in our list
  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end

end


#This class creates and manipulates the full linked list object
class LinkedList

  def initialize
    @head = nil
  end

  #adds a new node object to the start of the list
  def prepend(value)

    #the first time the list is initialized head will be nil, making our first node value head
    if @head.nil?
      @head = Node.new(value)
    else
      #when there is already a value assigned to head, assign the new node object as the head
      # and assign the previous head object to the next node value
      @head = Node.new(value, @head)
    end


  end

  #adds a new node object to the end of the list
  def append(value)
    #if their are no nodes yet (only a linked list object has been created, no nodes) then head would be nil:
    if @head.nil?
      @head = Node.new(value)
    else
        node = @head
        #loop through each node until we find the last one -
        # (which would be indicated by having nil stored as the next_node value)
        until node.next_node == nil
          node = node.next_node
        end
        #recent nil value to the new node we want to add on the end
        node.next_node = Node.new(value)
    end
  end

  #returns the total number of nodes in the list
  def size
    count = 0
    node = @head
      until node.nil?
        count += 1
        node = node.next_node
      end
    return count
  end

  #returns the value of the first node in the list
  def head
    node = @head
    puts @head.value
  end

  #returns the value of the last node in the list
  def tail
    node = @head
    #loops through and peaks at whether the next_nod exists
    until node.next_node.nil?
      node = node.next_node
    end
    #when the loop stops we're on the last node
    puts node.value
  end

  #this method will return false if if a non-valid index is given
  def valid?(index)
    length = size()
    index < size()
  end

  #returns the node at the given index
  # returns a message to user if a non-valid index is given
  def at(index)
    if !valid?(index)
      puts "#{index} is not a valid index"
    else
      node = @head
      counter = 0
        until counter == index
          node = node.next_node
          counter += 1
        end
      puts node.value
    end
  end

  def insert_at(index, new_value)
    if !valid?(index)
      puts "#{index} is not a valid index"
    else
      node = @head
      counter = 0
        until counter == (index - 1)
          node = node.next_node
          counter += 1
        end
        temp_node = node.next_node
        #puts "#{temp_node.value} is being bumped over an index for #{new_value}"
        #puts "And the #{node.value} at index #{counter} will now point to #{new_value}"
        node.next_node = Node.new(new_value, temp_node)
    end
  end

  def remove_at(index)
    if !valid?(index)
      puts "#{index} is not a valid index"
    else
      node = @head
      counter = 0
        until counter == (index - 1)
          node = node.next_node
          counter += 1
        end
      temp_node = node
        2.times do
          node = node.next_node
        end
        temp_node.next_node = node
    end
  end

  #removes the last element from the list
  def pop
    node = @head

    while node.next_node != nil
      prev = node
      node = node.next_node
    end
      prev.next_node = nil
      popped_value = node.value
      node = nil
      return popped_value
  end

  # returns true if the passed in value is in the list and otherwise returns false
  def contains?(item)
    present = false
    node = @head

    until node.next_node.nil?
      if node.value == item
        present = true
      end
      node = node.next_node
    end

    return present
  end

  #returns the index of the node containing data, returns nil if not found
  def find(data)
    #use our contain method to see if the data is even in our linked_list
    return nil if !contains?(data)
    node = @head
    #use our size method to detect how many times we need to loop through
    length = size

    length.times do |index|
      return index if node.value == data
        node = node.next_node
    end
  end

  #represents the LinkedList node values as a string, so we can print them out and preview them in the console
  # ( data ) -> ( data ) -> nil
  def print
    node = @head
    string = ""
      until node.nil?
        string << "( #{node.value} ) -> "
        node = node.next_node
      end
    string << "nil"
    puts string
  end

end


test = LinkedList.new

test.prepend("Eggplant")
test.prepend("Wonder!")
test.prepend("Shellfish")
test.append("bada-bing!")
test.print
puts test.size
test.head
test.tail
puts test.valid?(6)
test.at(4)
test.pop
puts test.contains?("loser")
test.print
puts test.find("Wonder!")
test.insert_at(2, "Pizza")
test.print
test.remove_at(1)
test.print
