class Queue
    def initialize
        @array = []
      # create ivar to store stack here!
    end

    def enqueue(el)
        @array.push(el)
      # adds an element to the stack
    end

    def dequeue
        @array.shift
      # removes one element from the stack
    end

    def peek
        @array[0]
      # returns, but doesn't remove, the top element in the stack
    end
  end


  x = Queue.new([1,4,6,7,4,5])
  print x.enqueue(2)
  print x.dequeue
  print x.peek