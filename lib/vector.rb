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
    # self[2] = n  my method, will only work if 1 num passed in
    MyVector.elements(self.to_a << n)
  end

  def self.angle(v1, v2)
    cos = (v1.inner_product v2)/((Math.sqrt(v1[1]**2 + v2[1]**2)) * (Math.sqrt(v1[0]**2 + v2[0]**2)))
    theta = Math.acos(cos)
    radians = (theta * Math::PI)/180
    radians
  end

  def angle(v)
    cos = (self.inner_product v)/((Math.sqrt(self[1]**2 + v[1]**2)) * (Math.sqrt(self[0]**2 + v[0]**2)))
    theta = Math.acos(cos)
    radians = (theta * Math::PI)/180
    radians
  end

end

# Don't need an initialize class bc vector already has 1 so would technically be overridding it
# MyVector[1,2].distance(Vector[2,2]) is how you would call the distance method
# def distance(v)  -- v is the second vector passed in
# self is the instance that distance is called on
