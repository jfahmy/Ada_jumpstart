require 'rack'
require 'csv'

search_string = "entry?q=%22AND%20then%20there%20were%20none%22&subscribed=true&sortProperty=title&sortAscending=true&pageSize=25&offset=0"

# The unescape method(function?) will call the percent-encoded string parameter, which will translate it to be human readable. 
# More info on percent-encoding or URL encoding can be found here: https://en.m.wikipedia.org/wiki/Percent-encoding
###CGI.unescape(search)

# Will go through the string and parse things out and make a hash
###CGI::parse(search)
# But stack overflow says this method has better performance
# it does the same thing but strips "entry?" off the front of the URL
single_hash = Rack::Utils.parse_query URI("entry?q=%22AND%20then%20there%20were%20none%22&subscribed=true&sortProperty=title&sortAscending=true&pageSize=25&offset=0").query

column_names = hashes.first.keys
s=CSV.generate do |csv|
	csv << column_names
	hashes.each.do |x|
		csv << x.values
	end
end

File.write('entry_file.csv', s)