# Add your code here
def get_user_input
  gets.strip
end

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songlist)
  songlist.each_with_index do |song, index|
    puts "#{index}. #{song}"
  end
end

def play(songlist)
  puts "Please enter a song name or number:"
  user_input = get_user_input
  if (user_input)
    if (Integer(user_input) != 0 && Integer(user_input) <= songlist.length)
      puts "Playing #{songlist[Integer(user_input) - 1]}"
    end
  elsif (songlist.include?(user_input))
    puts "Playing #{songlist.index(user_input)}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songlist)
  puts "Please enter a command:"
  user_input = get_user_input
  while (user_input != "exit") do
    case user_input
    when "help"
      help
    when "list"
      list(songlist)
    when "play"
      play(songlist)
    when "exit"
      exit_jukebox
    else
      puts "Invalid input, please try again"
    end
    puts "Please enter a command:"
    user_input = get_user_input
  end
end