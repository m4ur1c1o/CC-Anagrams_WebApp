class Word < ActiveRecord::Base
  # Remember to create a migration!

  def self.anagram_for(user_input)
		Word.where(sorted_term: canonical(user_input))
  end

  def self.canonical(word)
	  # implementa el formato canonical
		word.downcase.chars.sort.join
	end

  def are_anagrams?(word1, word2)
	  canonical(word1) == canonical(word2)
	end
end
