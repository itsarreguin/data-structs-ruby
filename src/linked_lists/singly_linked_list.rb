require_relative "../nodes/node"


class SinglyLinkedList < NodeModule::Node
    attr_accessor :tail, :size

    def initialize
        @tail = nil
        @size = 0
    end

    def append(data)
        node = Node(data)

        if @tail == nil
            @tail = node
        else
            current = @tail

            while current.next
                current = current.next
            end

            current.next = node
        end

        @size++
    end

    def size
        return @size.to_s
    end

    def iter
        current = @tail

        while current
            val = current.data
            current = current.next
            yield val
        end
    end

    def delete(data)
        current = @tail
        previous = @tail

        while current
            if current.data == data
                if current == @tail
                    @tail = current.next
                else
                    previous.next = current.next
                    @size--
                    return current.data
                end
            end
            previous = current
            current = current.next
        end
    end

    def search(data)
        for node in @iter
            if data == node
                puts "Data #{data} found!"
            end
        end
    end

    def clear
        @tail = nil
        @head = nil
        @size = 0
    end
end