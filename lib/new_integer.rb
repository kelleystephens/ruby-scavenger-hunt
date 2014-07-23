class Integer

  def factors
    arr = []
    2.upto(self - 1) do |i|
      arr << i if self % i == 0
    end
    arr
  end
end

# Jurnell's solution for both factors and prime factors
# def factors
#   a = (2..self).to_a
#   a.keep_if { |x| self%x == 0 && x != self }
# end
# def prime_factors
#   self.factors.keep_if { |x| Prime.instance.prime(x) }
# end
