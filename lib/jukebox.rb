require "pry"

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def run(songs)
  greeting
  command = user_command
  if command == "help"
    help
  elsif command == "list"
    list(songs)
  elsif command == "play"
    play(songs)
  elsif command == "exit"
    exit_jukebox
  else
# do we need to define something for if none of these commands are given?
  end
end

def greeting
  puts "Please enter a command:"
end

def user_command
  gets.strip
end

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index { |song, index| puts "#{index + 1}. #{song}" }
end

def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.strip
  song_numbers = [*1..songs.length]
  choice_number = choice.to_i
  if songs.include?(choice)
    puts "Playing #{choice}"
  elsif song_numbers.include?(choice_number)

    puts "Playing #{songs[choice_number - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end
