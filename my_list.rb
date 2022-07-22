require_relative './my_numerable'

class MyList
  include MyEnumerable
  attr_accessor :list

  def initialize(*list)
    @list = list
  end

  def each
    i = 0
    while i < list.length
      yield @list[i]
      i += 1
    end
  end
end
