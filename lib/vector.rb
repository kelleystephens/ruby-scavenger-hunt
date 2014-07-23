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
    # cos = (v1.inner_product v2)/((Math.sqrt(v1[1]**2 + v2[1]**2)) * (Math.sqrt(v1[0]**2 + v2[0]**2)))
    # radians = Math.acos(cos)
    v1.angle(v2)
  end

  def angle(v)
    cos = (self.inner_product v)/((Math.sqrt(self[1]**2 + v[1]**2)) * (Math.sqrt(self[0]**2 + v[0]**2)))
    radians = Math.acos(cos)
  end

end

# Don't need an initialize class bc vector already has 1 so would technically be overridding it
# MyVector[1,2].distance(Vector[2,2]) is how you would call the distance method
# def distance(v)  -- v is the second vector passed in
# self is the instance that distance is called on

# -----Jurnell's solution
# class MyVector < Vector
#   def distance(v)
#     Math.sqrt((self[0]-v[0])**2+(self[1]-v[1])**2)
#   end
#
#   def self.distance(a, *more)
#     if more.length < 1
#       return nil
#     end
#     stash = []
#     stash << a
#     distance_stash = 0
#     more.each do |v|
#       stash << v
#     end
#     # correction student mentioned in class the bug of the first element
#     # being summed twice. Hence running trough the loop one more time than
#     # needed.
# =begin
#     for v in (0..stash.length-1)
#       if v == 0
#         distance_stash = distance_stash + a.distance(stash[v])
#       else
#         distance_stash = distance_stash + stash[v].distance(stash[v-1])
#       end
#     end
# =end
#     for v in (1..stash.length-1)
#       if v == 1
#         distance_stash = distance_stash + stash[0].distance(stash[v])
#       else
#         distance_stash = distance_stash + stash[v].distance(stash[v-1])
#       end
#     end
#     distance_stash
#   end
#
#   def <<(i)
#     MyVector.elements(self.to_a << i)
#   end
#
#   def self.angle(v1, v2)
#     v1.angle(v2)
#   end
#
#   def angle(v)
#     numerator = self.inner_product(v)
#     denominator = self.magnitude * v.magnitude
#     Math::acos(numerator/denominator).round(10)
#   end
# end
