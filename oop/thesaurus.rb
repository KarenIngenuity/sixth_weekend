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


RSpec.describe Entry do
  describe '#word' do
    it 'should return happy if given happy' do
      entry = Entry.new({word: "happy", synonyms: ["joyful"], antonyms:["sad"]})
      expect(entry.word).to eq("happy")
    end              
  end
  describe '#synonyms' do
    it 'should return joyful if call synonyms method' do
      entry = Entry.new({word: "happy", synonyms: ["joyful"], antonyms:["sad"]})
      expect(entry.synonyms).to eq(["joyful"])
    end              
  end  
  describe '#antonyms' do
    it 'should return sad if call antonyms method' do
      entry = Entry.new({word: "happy", synonyms: ["joyful"], antonyms:["sad"]})
      expect(entry.antonyms).to eq(["sad"])
    end              
  end  
  describe '#add_synonym' do
    it 'should return joyful and cheery if call synonyms method, after adding cheery as a synonym' do
      entry = Entry.new({word: "happy", synonyms: ["joyful"], antonyms:["sad"]})
      entry.add_synonym("cheery")
      expect(entry.synonyms).to eq(["joyful", "cheery"])
    end          
  end  
  describe '#add_antonym' do
    it 'should return sad and gloomy if call antonyms method, after adding gloomy as an antonym' do
      entry = Entry.new({word: "happy", synonyms: ["joyful"], antonyms:["sad"]})
      entry.add_antonym("gloomy")
      expect(entry.antonyms).to eq(["sad", "gloomy"])
    end          
  end 
  describe '#delete_synonym' do
    it 'should return cheery if call synonyms method, after adding cheery as a synonym and deleting joyful' do
      entry = Entry.new({word: "happy", synonyms: ["joyful"], antonyms:["sad"]})
      entry.add_synonym("cheery")
      entry.delete_synonym("joyful")
      expect(entry.synonyms).to eq(["cheery"])
    end          
  end  
  describe '#delete_antonym' do
    it 'should return gloomy if call antonyms method, after adding gloomy as an antonym and deleting sad' do
      entry = Entry.new({word: "happy", synonyms: ["joyful"], antonyms:["sad"]})
      entry.add_antonym("gloomy")
      entry.delete_antonym("sad")
      expect(entry.antonyms).to eq(["gloomy"])
    end          
  end            
end

RSpec.describe Thesaurus do
  describe '#entries' do
    it 'should return happy, fun, and dark, if entries are called' do
      entry = Entry.new({word: "happy", synonyms: ["joyful"], antonyms:["sad"]})
      entry = Entry.new({word: "fun", synonyms: ["exciting"], antonyms:["boring"]})
      entry = Entry.new({word: "dark", synonyms: ["ominous"], antonyms:["light"]})            
      thesaurus = Thesaurus.new(["happy", "fun", "dark"])
      expect(thesaurus.entries).to eq(["happy", "fun", "dark"])
    end              
  end
  describe '#add_entry' do
    it 'should return happy, fun, dark, and big, if entries are called, after adding big to the entries' do
      entry = Entry.new({word: "happy", synonyms: ["joyful"], antonyms:["sad"]})
      entry = Entry.new({word: "fun", synonyms: ["exciting"], antonyms:["boring"]})
      entry = Entry.new({word: "dark", synonyms: ["ominous"], antonyms:["light"]})            
      thesaurus = Thesaurus.new(["happy", "fun", "dark"])
      thesaurus.add_entry("big")
      expect(thesaurus.entries).to eq(["happy", "fun", "dark", "big"])
      expect(entry.synonyms).to eq(["ominous"])
    end              
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