class Squares
  def initialize(n)
    @n = n 
    @square_of_sums = nil
    @sum_of_squares = nil
  end

  def square_of_sums
    (1..@n).to_a.inject(:+)**2
  end

  def sum_of_squares
    (1..@n).to_a.map{|a|a**2}.inject(:+)
  end

  def difference
    @difference = square_of_sums - sum_of_squares
  end
end