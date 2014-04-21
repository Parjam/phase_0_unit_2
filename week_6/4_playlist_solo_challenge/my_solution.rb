# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge [by myself].


# Pseudocode



# Initial Solution

class Song

	attr_accessor :title, :artist

	def initialize (title, artist)
		@title = title
		@artist = artist
	end

	def play
		puts "You're listening to #{@title} by #{artist}" 
	end

end

class Playlist

	attr_accessor :list

	def initialize (list)
		@list = list.split("")
	end

	def add (new_song)
		@list << new_song
	end

	def remove (song)
		@list.delete(song)
	end

	def play_all
		@list.each do |song|
			puts "You're listening to #{song}"
		end
	end

	def display
		@list.each do |song|
			puts song
		end
	end

	def num_of_tracks
		@list.length
	end

end




# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")
 
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
 
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
 
my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display



# Reflection 

# I don't understand what I'm doing wrong that gives me the error "wrong number of arguments."