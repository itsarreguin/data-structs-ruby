require_relative "../src/nodes/node"


def node_test
    #Instance Node class
    node1 = NodeModule::Node.new("Ruby")
    node2 = NodeModule::Node.new("Node struct", node1)
    node3 = NodeModule::Node.new("My Data", node2)
    node4 = NodeModule::Node.new("Next", node3)

    # 
    puts "Node 1 data: #{node1.data}"
    puts "Node 2 data: #{node2.data}"
    # puts "Node 2 points to: #{node2.after.data} data"
end

# Start node test
node_test()