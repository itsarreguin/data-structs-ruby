module NodeModule
    class Node
        attr_accessor :value, :next, :after

        def initialize(value, after=nil)
            @value = value
            @next = after
        end
    end
end