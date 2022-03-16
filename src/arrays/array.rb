module ArrayModule
    class Array
        def initialize(capacity, fill_value="None")
            @elements = []
            for arr in 0...capacity do
                @elements.push(fill_value)
            end
        end

        def output
            return @elements
        end

        def str
            return @elements.to_s
        end

        def len
            if @elements != []
                return "Array length: #{@elements.length}"
            else
                puts "Array empty"
            end
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
            return @elements.append(new_item)
        end

        def delt
            return @elements.pop()
        end

        def order
            return @elements.sort { |a,z| a <=> z }
        end

        def rev
            return @elements.reverse
        end
    end
end