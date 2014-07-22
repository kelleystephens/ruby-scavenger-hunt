class Integer

  def factors
    arr = []
    2.upto(self - 1) do |i|
      arr << i if 12 % i == 0
    end
    arr
  end
end
