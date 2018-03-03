#This is where we'll store our full list?
class LinkedList

  def initialize
    @head = nil
  end

  #adds a new node the start of the list
  def prepend(value)

    if @head.nil?
      @head = Node.new(value)
    else
      #storing the current head of the list as new entry
      #setting new head of the list to our passed in value
      @head = Node.new(value, @head)
    end

  end

  #adds a new node to the end of the list
  def append(value)
    #incase their are no entries yet:
    if @head.nil?
      @head = Node.new(value)
    else
        node = @head
        #loop through each node until we find the last one - indicated by
        # having nil as the next_node value
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

  #returns the first node in the list
  def head
    node = @head
    puts @head.value
  end

  #returns the last node in the list
  def tail
    node = @head
    #loops through and peaks at whether the next_nod exists
    # If it does then we set node variable to that value
    until node.next_node.nil?
      node = node.next_node
    end
    #when the loop stops we're on the last node
    puts node.value
  end

  #returns the node at the given index
  # returns a message to user if a non-valid index is given
  def at(index)
    length = size()
    if index > size()
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
    return nil if contains?(data) == false
    node = @head
    #use our size method to detect how many times we need to loop through
    length = size

    length.times do |index|
      return index if node.value == data
        node = node.next_node
    end
  end

  #represent your LinkedList objects as strings, so you can print them out and preview them in the console
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

class Node
  attr_accessor  :value, :next_node

  #the next_note variable is a pointer to the following entry in the list
  #value will hold the data for each entry in our list
  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
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
test.at(5)
test.pop
puts test.contains?("loser")
test.print
puts test.find("Wonder!")
