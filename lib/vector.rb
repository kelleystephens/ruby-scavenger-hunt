class VectorChild < Vector

  def initialize(x, y)
    @a = Vector[x, y]
  end

  def [](i)
    @a[i]
  end

  def distance(x2, y2)
    Math.sqrt((x2 - [](0)).exp(2) + (y2 - [](1)).exp(2))
  end

end
