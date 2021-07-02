class Stack
    def initialize
        @array =  []
      # create ivar to store stack here!
    end

    def push(el)
        @array.push(el)
      # adds an element to the stack
    end

    def pop
        @array.pop
      # removes one element from the stack
    end

    def peek
        @array[0]
      # returns, but doesn't remove, the top element in the stack
    end
  end


  x = Stack.new([1,4,6,7,4,5])
  print x.push(2)
  print x.pop
  print x.peek