require_relative 'thesaurus'

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
    it 'should gloomy if call antonyms method, after adding gloomy as an antonym and deleting sad' do
      entry = Entry.new({word: "happy", synonyms: ["joyful"], antonyms:["sad"]})
      entry.add_antonym("gloomy")
      entry.delete_antonym("sad")
      expect(entry.antonyms).to eq(["gloomy"])
    end          
  end            
end

RSpec.describe Thesaurus do
  describe '#entries' do
    it 'should return happy, fun, and dark if entries are called' do
      entry = Entry.new({word: "happy", synonyms: ["joyful"], antonyms:["sad"]})
      entry = Entry.new({word: "fun", synonyms: ["exciting"], antonyms:["boring"]})
      entry = Entry.new({word: "dark", synonyms: ["ominous"], antonyms:["light"]})            
      thesaurus = Thesaurus.new(["happy", "fun", "dark"])
      expect(thesaurus.entries).to eq(["happy", "fun", "dark"])
    end              
  end
  describe '#add_entry' do
    it 'should return happy, fun, dark, and big if entries are called, after adding big to the entries' do
      entry = Entry.new({word: "happy", synonyms: ["joyful"], antonyms:["sad"]})
      entry = Entry.new({word: "fun", synonyms: ["exciting"], antonyms:["boring"]})
      entry = Entry.new({word: "dark", synonyms: ["ominous"], antonyms:["light"]})            
      thesaurus = Thesaurus.new(["happy", "fun", "dark"])
      thesaurus.add_entry("big")
      expect(thesaurus.entries).to eq(["happy", "fun", "dark", "big"])
    end              
  end           
end