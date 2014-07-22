class VectorChild < Vector

  def initialize(x, y)
    @a = Vector[x, y]
  end

  def distance(x2, y2)
    Math.sqrt((x2 - @a[0]).exp(2) + (y2 - @a[1]).exp(2))
  end

end
