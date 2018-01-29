#scrapes the wiki homepage as html and stores as local file
=begin
require 'rubygems'
require 'rest-client'


wiki_url = "https://en.wikipedia.org/wiki/Main_Page"
wiki_local_file = "wiki-page.html"

File.open(wiki_local_file, "w") do |file|
  file.write(RestClient.get(wiki_url))
end
=end

#playing with open-uri gem and reading lines from a Url and print them to terminal
require 'open-uri'
url = "http://ruby.bastardsbook.com/files/fundamentals/hamlet.txt"
my_hamlet = "hamlet.txt"

File.open(my_hamlet, "w") do |file|
  file.write(open(url).read)
end

is_hamlet_speaking = false
File.open(my_hamlet, "r") do |file|
  file.readlines.each do |line|

    if is_hamlet_speaking == true && (line.match(/^   [A-Z]/) || line.strip.empty? )
      is_hamlet_speaking = false
    end

    is_hamlet_speaking = true if line.match("Ham\.")

    puts line if is_hamlet_speaking == true
  end
end
