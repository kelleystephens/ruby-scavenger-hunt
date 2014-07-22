require "matrix"

class MyVector < Vector

  def distance(v)
    Math.sqrt((self[0] - v[0])**2 + (self[1] - v[1])**2)
  end

  def self.pathlength(v1, v2, v3)
    d1 = v1.distance(v2)
    d2 = v2.distance(v3)
    pathlength = d1 + d2
    pathlength
  end

  def <<(n)
    self[2] = 0
    x = self  + MyVector[0, 0, n]
    x
  end

end

# Don't need an initialize class bc vector already has 1 so would technically be overridding it
# MyVector[1,2].distance(Vector[2,2]) is how you would call the distance method
# def distance(v)  -- v is the second vector passed in
# self is the instance that distance is called on
