 class LRUCache
    def initialize(size = 1)
        @cache = []
        @size = size
    end

    def count
        cache.length
      # returns number of elements currently in cache
    end

    def add(el)
        if cache.include?(el)
            cache.delete(el)
            cache << el
        elsif count >= @size
            @cache.shift
            @cache << el
        else
            @cache << el
        end
    end

      # adds element to cache according to LRU principle
    end

    def show
        print cache
      # shows the items in the cache, with the LRU item first
    end

    private
    # helper methods go here!

  end