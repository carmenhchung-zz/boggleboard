# Set up Boggleboard with both spaces and alphabet letters (the latter is not needed for this task).
class BoggleBoard
  def initialize
     @spaces = Array.new(16,"_")
     @alphabet = ('A'..'Z').to_a
  end

# Method to output 4 x 4 spaces
def to_s
    @output_string = String.new
    letter_array = @spaces

    4.times do
      @output_string << letter_array.shift(4).join('  ') + "\n"
    end
    puts @output_string
end
end

# Make new BoggleBoard called board and output the 4 x 4 spaces.
board = BoggleBoard.new
puts board.to_s

# Create an array of the 6 faces of 16 dice, each face having a designated letter.
DICE = ["AAEEGN", "ELRTTY", "AOOTTW", "ABBJOO", "EHRTVW", "CIMOTU", "DISTTY", "EIOSST", "DELRVY", "ACHOPS", "HIMNQU", "EEINSU", "EEGHNW", "AFFKPS", "HLNNRZ", "DEILRX"]

# Randomly select one of the dice and make it into one string. Do this 16 times so you have one long string of all the letters.
def generate(number)
  charset = Array(DICE)
  Array.new(number) { charset.sample }.join
end
list = generate(16)

# Each variable letter below is given one random dice face letter (picked from the first batch of six letters, followed by the second batch of six etc - for a total of 16 times).
a = rand(0..5)
b = rand(6..11)
c = rand(12..17)
d = rand(18..23)
e = rand(24..29)
f = rand(30..35)
g = rand(36..41)
h = rand(42..47)
i = rand(48..53)
j = rand(54..59)
k = rand(60..65)
l = rand(66..71)
m = rand(72..77)
n = rand(78..83)
o = rand(84..89)
p = rand(90..95)

# The variable letters above and put into one array.
letter_array = [list[a], list[b], list[c], list[d], list[e], list[f], list[g], list[h], list[i], list[j], list[k], list[l], list[m], list[n], list[o], list[p]]

# If any of the letters selected are q, then they are replaced in the array with Qu. If they are not Q, then they are replaced with the letter followed by a space.
letter_array.map! { |e| e == "Q" ? "Qu" : e + " " }

# All letters in the array are printed.
print "#{letter_array[0]}", " ", "#{letter_array[1]}", " ", "#{letter_array[2]}", " ", "#{letter_array[3]}" + "\n"
print "#{letter_array[4]}", " ", "#{letter_array[5]}", " ", "#{letter_array[6]}", " ", "#{letter_array[7]}" + "\n"
print "#{letter_array[8]}", " ", "#{letter_array[9]}", " ", "#{letter_array[10]}", " ", "#{letter_array[11]}" + "\n"
print "#{letter_array[12]}", " ", "#{letter_array[13]}", " ", "#{letter_array[14]}", " ", "#{letter_array[15]}" + "\n"
