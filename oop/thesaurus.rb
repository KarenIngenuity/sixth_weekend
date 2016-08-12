# Create a thesaurus application. To create it, you will create two classes, Thesaurus and Entry.

#Thesaurus:
  #contains many entries
#Entries:  
  #attributes: word, synonyms, antonyms
  #features: 
  #add new words
  #delete words
  #look for a word's synonyms
  #look for a word's antonyms
  #add a synonym
  #add an antonym

require 'rspec'

class Entry
  attr_accessor :word, :synonyms, :antonyms

  def initialize(word_and_attributes)
    # word_and_attributes is a hash
    # word = one word
    # synonym = array
    # antonym = array
    @word = word_and_attributes[:word]
    @synonyms = word_and_attributes[:synonyms]
    @antonyms = word_and_attributes[:antonyms]
  end

  def add_synonym(synonym)
    @synonyms << synonym
  end
  
  def add_antonym(antonym)
    @antonyms << antonym
  end

  def delete_synonym(synonym)
    @synonyms.delete(synonym)
  end 

  def delete_antonym(antonym)
    @antonyms.delete(antonym)
  end    
end


class Thesaurus
  attr_accessor :entries
  def initialize(entries)
    #entries is an array.
    @entries = entries
  end

  def add_entry(word)
    @entries << word
  end
end



# A Thesaurus will contain many Entries. An Entry contains three primary attributes:
# word, synonymns, and antonyms. Your application should contain the following features:
# 1. The ability to add new words to a Thesaurus.
# 2. The ability to delete a word from a Thesaurus. 
# 3. The ability to look up a word's synonyms.
# 4. The ability to look up a word's antonyms.
# 5. The ability to add a synonym to a word.
# 6. The ability to add an antonym to a word.
#
# Part of the challenge is to determine which functionality belongs in the Thesaurus class,
# and which belongs in the Entry class.
#
# And... test your functionality using RSpec!