module MyEnumerable

    def each(list)

    end

    def all?
        is_true= true
        list_index = 0
        while is_true && list_index < list.length()
            is_true = yield list[list_index]
            list_index+=1
        end
        is_true
    end
end
class MyList 
    include MyEnumerable
    attr_accessor :list

    def initialize(list)
        @list = list
    end

    def each
        
    end

   
end
list = MyList.new([1, 2, 3, 4])
puts  list.all? {|e| e < 5}
puts list.all? {|e| e > 5}