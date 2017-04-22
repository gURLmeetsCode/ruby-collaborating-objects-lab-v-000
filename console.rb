require_relative "./lib/artist.rb"
require_relative "./lib/song.rb"
require_relative "./lib/mp3_importer.rb"

require 'pry'

adele = Artist.new('Adele')
bruno = Artist.new('Bruno Mars')
hello = Song.new('Hello')

binding.pry
