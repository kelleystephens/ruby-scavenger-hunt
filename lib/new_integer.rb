class Integer

  def factors
    arr = []
    2.upto(self - 1) do |i|
      arr << i if self % i == 0
    end
    arr
  end
end
