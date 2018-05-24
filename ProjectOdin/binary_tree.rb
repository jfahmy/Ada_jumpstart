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

	def initialize(root = nil)
		@root = root
	end

	def set_root(root_value)
		@root = Node.new(root_value)
		puts "Out Binary Search Tree's root is set to " + @root.value.to_s
	end

	def tree_queue(array)
		set_root(array.shift)
		array.shuffle.each do |num|
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

	def bredth_first_search(target)
		queue = [@root]

		until queue.empty? do
			current_node = queue.shift
				return current_node.value.to_s if current_node.value == target
				queue << current_node.left_child unless current_node.left_child.nil?
				queue << current_node.right_child unless current_node.right_child.nil?
		end
		nil
	end

	def depth_first_search(target)
		stack = [@root]

		until stack.empty? do
			current_node = stack.pop
				return current
		end

	end

end

run = BinarySearchTree.new
run.tree_queue([5, 1, 7, 4, 23, 8, 9, 4, 3, 7, 9, 67, 6345, 324])
run.bredth_first_search(4)
