class Node
	attr_reader :value
	attr_accessor :left_child, :right_child

	def initialize(value=nil)
		@value = value;
		left_child = nil;
		right_child = nil;
	end

end


class BinarySearchTree

	def initialize(array)
		puts "initializing our search tree with " + array[0].to_s
		@root = Node.new(array[0])
		tree_queue(array)
	end


	def tree_queue(array)
		array.each do |num|
			insert(num)
		end
	end

# commented out the put statements in this method, but if you make them active it will print to the terminal
# so that you can see how the tree is being built.
	def insert(value)
		puts "inserting: " + value.to_s
		current_node = @root
		puts "current_node is " + current_node.value.to_s
		while nil != current_node
				if (value < current_node.value) && (current_node.left_child == nil)
					current_node.left_child = Node.new(value)
					puts value.to_s + " has been made left child of " + current_node.value.to_s
				elsif (value > current_node.value) && (current_node.right_child == nil)
					current_node.right_child = Node.new(value)
					puts value.to_s + " has been made right child of " + current_node.value.to_s
				elsif (value < current_node.value)
					current_node = current_node.left_child
					puts "current_node is " + current_node.value.to_s
				elsif (value > current_node.value)
					current_node = current_node.right_child
					puts "current_node is " + current_node.value.to_s
				else
					return
				end
		end
	end

end

node = BinarySearchTree.new([5, 1, 7, 4, 23, 8, 9, 4, 3, 7, 9, 67, 6345, 324])
