require_relative "../src/arrays/array"
# require_relative "src/arrays/grid"

def array_test
    obj = ArrayModule::Array.new(4) #<- Insert array capacity
    emp = ArrayModule::Array.new(0)

    # Insert items by index (index, item)
    puts "\n"
    puts obj.ins(0, "Ruby")
    puts obj.ins(1, true)
    puts obj.ins(2, "Data Structure")
    puts obj.ins(3, 2500)

    # Array output
    puts obj.output
    puts "\n"

    # Convert array to string
    puts obj.str
    puts "\n"

    # Get array length
    puts obj.len
    puts emp.len

    # Get array items by index position
    puts obj.get_item(0)
    puts obj.get_item(3)
    puts "\n"

    # Sorted array
    # puts obj.ord

    # Sort reverse items in array
    puts obj.rev
    puts "\n"

    # Delete item, by name
    puts obj.rm(true)
    puts obj.rm("Data Structure")
    puts "\n"
    
    # Append new item
    puts obj.add("Array struct")
end

# Start array test
array_test()




def grid_test
    gr = GridModule::Grid(4, 4) #<- Insert nums of rows and columns

    # Show grid structure height
    puts gr.get_height

    # Show grid structure width
    puts gr.get_width
end

# Start grid test
# grid_test()