class Node
	attr_reader :value
	attr_accessor :left_child, :right_child, :parent

	def initialize(value=nil)
		@value = value;
		left_child = nil;
		right_child = nil;
		parent = nil;
	end

end