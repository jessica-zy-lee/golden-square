class Counter
    def initialize
        @count = 0
        end
def add(num)
    @count += num
    end

    def report
        return "counted to #{@count} so far."
        end
    end