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

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play
  switch = true
  puts "Please enter a song name or number:"
  choice = gets.chomp

  while switch
    if 1 <= choice.to_i && choice.to_i <= 9
      puts "Playing #{songs[choice + 1]}"
      switch = false
    elsif songs.include?(choice.to_s)
      puts "Playing #{choice}"
      switch = false
    else
      puts "Invalid input, please try again"
    end
  end

end