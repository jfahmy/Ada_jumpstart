class Song

  def initialize(lyrics)
    @lyrics = lyrics
  end

  def sing_me_a_song()
    @lyrics.each {|line| puts line }
  end

end

happy_bday = ["Happy birthday to Shushi", "I don't wnat to get sued", "So I'll stop right there"]
hmph = Song.new(happy_bday)

bulls_on_parade = Song.new(["They rally around tha family", "With pockets full of shells"])

hmph.sing_me_a_song()

bulls_on_parade.sing_me_a_song()
