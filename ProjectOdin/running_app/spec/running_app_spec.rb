require "running_app"

describe Run do

	it "should respond to duration" do
	    test = Run.new
	    test.should respond_to(:duration)
	end

end
