class Map
    def initialize
        @array = []
    end

    def set(key, value)
        bool = true
        index = 0
        @array.each_with_index do |pairs, i|
            if pairs[0] == key
                bool = false
                index = i
            end
        end
        if bool
            @array.push([key, value])
        else
            @array[index][1] = value
        end
    end

    def get(key)
        @array.each_with_index do |pairs,i|
            if pairs[0] == key
                return pair[1]
            end
        end
    end

    def delete(key)
        @array.each_with_index do |pairs,i|
            if pairs[0] == key
                @array.delete_at(i)
            end
        end
    end

    def show
        print @array
    end
end