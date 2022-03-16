require_relative "./array"

module GridModule
    class Grid < ArrayModule::Array
        def def initialize(rows, columns, default_value="None")
          @data = Array(rows)

          for row in 0...rows do
              @data[row] = Array(columns, default_value)
          end
        end

        def get_height
            return @data.length
        end

        def get_width
            return @data[0].length
        end

        def get_item(index)
            if @data
                return "Index #{index}: #{@data[index]} item"
            end
        end
    end
end