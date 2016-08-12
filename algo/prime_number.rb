# Use RSpec to test the following exercise! You may wish to wrap the methods below in a class to help facilitate this.

# First, implement the is_prime? method below. It should accept a number as an argument and return
# true if the number is prime and false if it is not. A prime number is a number that is only
# divisible by itself and the number 1.

# require 'rspec'

# class PrimeTest
#   def is_prime?(number)
#     modulo_results = []
#     previous_numbers = []
#     for i in 2..(number - 1)
#       previous_numbers << i
#     end
#     previous_numbers.each do |prev_num|
#       if number % prev_num == 0
#         modulo_results << prev_num
#       end
#     end
#     if modulo_results == []
#       return true
#     else
#       return false
#     end
#   end
# end  

# RSpec.describe PrimeTest do
#   describe '#is_prime?' do
#     it 'should return true if given 1' do
#       primetest = PrimeTest.new
#       expect(primetest.is_prime?(1)).to eq(true)
#     end       
#     it 'should return true if given 2' do
#       primetest = PrimeTest.new
#       expect(primetest.is_prime?(2)).to eq(true)
#     end  
#     it 'should return true if given 3' do
#       primetest = PrimeTest.new
#       expect(primetest.is_prime?(3)).to eq(true)
#     end     
#     it 'should return false if given 4' do
#       primetest = PrimeTest.new
#       expect(primetest.is_prime?(4)).to eq(false)
#     end   
#     it 'should return true if given 5' do
#       primetest = PrimeTest.new
#       expect(primetest.is_prime?(5)).to eq(true)
#     end         
#     it 'should return false if given 6' do
#       primetest = PrimeTest.new
#       expect(primetest.is_prime?(6)).to eq(false)
#     end 
#     it 'should return true if given 7' do
#       primetest = PrimeTest.new
#       expect(primetest.is_prime?(7)).to eq(true)
#     end 
#     it 'should return true if given 11' do
#       primetest = PrimeTest.new
#       expect(primetest.is_prime?(11)).to eq(true)
#     end     
#     it 'should return true if given 13' do
#       primetest = PrimeTest.new
#       expect(primetest.is_prime?(13)).to eq(true)
#     end            
#   end
# end


# Second, implement the highest_prime_number_under method below. It should accept a number as
# an argument and return the highest prime number under that number. For example, the 
# highest prime number under 10 is 7.

require 'rspec'

class PrimeTest
  def highest_prime_number_under(number)
    prime_numbers = [1, 2, 3]
    previous_numbers = []
    for i in 2..(number)
      previous_numbers << i
    end
    p "previous_numbers: #{previous_numbers}"
    p "prime_numbers: #{prime_numbers}"
    previous_numbers.each do |i|
      if i % 2 != 0 and i % 3 != 0
          prime_numbers << i
      end
    end
    p "prime_numbers: #{prime_numbers}"
    return prime_numbers[-1]
  end
end

RSpec.describe PrimeTest do
  describe '#highest_prime_number_under' do
    it 'should return 7 if given 10' do
      primetest = PrimeTest.new
      expect(primetest.highest_prime_number_under(10)).to eq(7)
    end
    it 'should return 11 if given 12' do
      primetest = PrimeTest.new
      expect(primetest.highest_prime_number_under(12)).to eq(11)
    end    
    it 'should return 11 if given 11' do
      primetest = PrimeTest.new
      expect(primetest.highest_prime_number_under(11)).to eq(11)
    end 
    it 'should return 13 if given 14' do
      primetest = PrimeTest.new
      expect(primetest.highest_prime_number_under(14)).to eq(13)
    end 
    it 'should return 13 if given 15' do
      primetest = PrimeTest.new
      expect(primetest.highest_prime_number_under(15)).to eq(13)
    end  
    it 'should return 13 if given 16' do
      primetest = PrimeTest.new
      expect(primetest.highest_prime_number_under(16)).to eq(13)
    end   
    it 'should return 17 if given 17' do
      primetest = PrimeTest.new
      expect(primetest.highest_prime_number_under(17)).to eq(17)
    end  
    it 'should return 17 if given 18' do
      primetest = PrimeTest.new
      expect(primetest.highest_prime_number_under(18)).to eq(17)
    end 
    it 'should return 19 if given 19' do
      primetest = PrimeTest.new
      expect(primetest.highest_prime_number_under(19)).to eq(19)
    end                    
  end
end