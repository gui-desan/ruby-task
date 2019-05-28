#!/usr/bin/ruby

class Tree
    def initialize(arr)
        @root = Node.new(arr) if arr != nil
    end

    def showVisibleNode
        count = 0
        count += @root.countVisibleNode(@root.x) if @root != nil
        puts "#{count}"
    end
end

class Node
    attr_accessor :x, :l, :r

    def initialize(arr)
        @x = arr[0]
        @l = Node.new(arr[1]) if arr[1] != nil
        @r = Node.new(arr[2]) if arr[2] != nil
    end

    def countVisibleNode(m)
        count = 0
        if @x >= m
            count += 1
            m = @x
        end
        count += @l.countVisibleNode(m) if @l != nil
        count += @r.countVisibleNode(m) if @r != nil
        return count
    end
end

t = Tree.new([5, [3, [20, nil, nil], [21, nil, nil]], [10, [1, nil, nil], nil]])
t.showVisibleNode