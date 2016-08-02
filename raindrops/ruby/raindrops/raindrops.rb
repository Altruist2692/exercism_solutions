require 'prime'
class Raindrops
	def self.convert(n)
		@result = ''
		prime_array = prime_factors_of(n)
		@result.concat 'Pling' if prime_array.include? 3
		@result.concat 'Plang' if prime_array.include? 5
		@result.concat 'Plong' if prime_array.include? 7
		@result = n.to_s if @result.length == 0
		@result
	end
	
	def self.prime_factors_of(n)
		arr = Prime.prime_division(n)
		arr.flatten.uniq
	end
end