module MyEnumerable

    def all?
        is_true= true
        list_index = 0
        while is_true && list_index < list.length()
            is_true = yield list[list_index]
            list_index+=1
        end
        is_true
    end

    def any?
        is_true = false
        each do |e|
          return true if yield e  #code condition
        end
        is_true
    end

end
class MyList 
    include MyEnumerable
    attr_accessor :list

    def initialize(*list)
        @list = list
    end

    def each
       @i = 0
       while @i < list.length
        yield @list[@i]
        @i += 1
       end
    end
end
list = MyList.new([1, 2, 3, 4])
# puts  list.all? {|e| e < 5}
# puts list.all? {|e| e > 5}
puts list.any? {|e| e == 2} #true
puts list.any? {|e| e == 5} #false

