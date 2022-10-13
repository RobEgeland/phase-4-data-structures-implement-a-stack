class Stack 
    

    def initialize(limit = nil)
        @stack = []
        @limit = limit
    end

    def push(value)
        if @limit == nil || @stack.size < @limit  
            @stack.push(value)
        else
            raise "Stack Overflow"
        end
    end

    def pop
        @stack.pop
    end

    def peek
        @stack[@stack.size - 1]
    end

    def size
        @stack.size
    end

    def empty?
        @stack.empty?
    end

    def full?
        @stack.size == @limit
    end

    def search(target)
        @stack.include?(target) ? @stack[@stack.size - 1] - target : -1
    end

end
