module ArrayModule
    class Array
        attr_accessor :capacity, :elements
        
        def initialize(capacity, fill_value=nil)
            @elements = []

            for arr in 0...capacity do
                @elements.push(fill_value)
            end
        end

        def output
            return @elements
        end

        def len
            if @elements != []
                return "Array length: #{@elements.length}"
            else
                puts "Array empty"
            end
        end

        def str
            return @elements.to_s if @elements != []
        end

        def ins(index, new_item)
            if @elements != []
                @elements[index] = new_item
                puts "#{new_item} item insert correctly on index #{index}"
            end
        end
        
        def rm(item)
            while @elements
                puts "#{item} remove successfully"
                return @elements.delete_at(@elements.index(item))
            end
        end

        def add(new_item)
            return "Insert #{new_item} item in #{@elements.append(new_item)}"
        end

        def delt
            while @elements
                return "Delete #{@elements.pop()} correctly"
            end
        end

        def get_item(index)
            return "Index #{index} is: #{@elements[index]} element"
        end

        def ord
            return @elements.sort
        end

        def rev
            return @elements.reverse
        end
    end
end