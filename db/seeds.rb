# Este archivo sirve para correr código que te permita 
# rellenar tu base de datos con información. 

def read_file
	file = File.open("words.txt", "r")
	# TEST FOR ONE RECORD
	# line = file.each_line.first
	# Word.create(term: line.chomp, sorted_term: canonical(line.chomp))
	file.each_line do |line|
		Word.create(term: line.chomp, sorted_term: canonical(line.chomp))
	end
	file.close
end

def canonical(word)
  # implementa el formato canonical
	word.downcase.chars.sort.join
end

read_file