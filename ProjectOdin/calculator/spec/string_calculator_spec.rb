require "string_calculator"

describe StringCalculator do 
	# the describe, context and it block is meant to be descriptive.
	# this example -> add class method: given an empty string, should return zero
	describe ".add" do
		context "given an empty string" do
			it "returns zero" do
				# expect(...).to and expect(...).not_to are used to define our expected outcomes
				# eql is a basic equality matcher - see rspec doc for other matchers
 				expect(StringCalculator.add("")).to eql(0)
 			end
 		end
 	end
end

describe StringCalculator do
 	#the test for when given a single number
 	describe ".add" do
 		context "given '4'" do
 			it "returns 4" do
 				expect(StringCalculator.add("4")).to eql(4)
 			end
 		end

 		context "given '10'" do
 			it "returns 10" do
 				expect(StringCalculator.add("10")).to eql(10)
 			end
 		end
 	end

end


describe StringCalculator do

	describe ".add" do
		context "two numbers" do
			context "given '2,4'" do
				it "returns 6" do
					expect(StringCalculator.add("2,4")).to eql(6)
				end
			end

			context "given '17,100'" do
				it "returns 117" do
					expect(StringCalculator.add("17,100")).to eql(117)
				end
			end
		end
	end
end

