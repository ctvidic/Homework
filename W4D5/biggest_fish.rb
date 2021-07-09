def sluggish_octopus(array)
    max = ""
    array.each_with_index do |val,i1|
        bool  = true
        array.each_with_index do |val2, i2|
            if val.length < val2.length && i1 != i2
                bool = false
                break
            end
        end
        if bool
            max = val
        end
    end
    p max
end

class Array
  def merge_sort(&prc)
    prc ||= Proc.new { |x, y| x <=> y }

    return self if count <= 1

    midpoint = count / 2
    sorted_left = self.take(midpoint).merge_sort(&prc)
    sorted_right = self.drop(midpoint).merge_sort(&prc)

    Array.merge(sorted_left, sorted_right, &prc)
  end

  private
  def self.merge(left, right, &prc)
    merged = []

    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1
        merged << left.shift
      when 0
        merged << left.shift
      when 1
        merged << right.shift
      end
    end

    merged.concat(left)
    merged.concat(right)

    merged
  end
end

def dominant_octopus(a)
    prc = Proc.new { |x, y| y.length <=> x.length }
    sorted_arr = a.merge_sort(&prc)
    p sorted_arr.first
end

def clever_octopus(a)
    length = 0
    maxI= 0
    a.each_with_index do |val,i|
        if val.length > length
            length = val.length
            maxI = i
        end
    end
    p a[maxI]
end







a = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
sluggish_octopus(a)
dominant_octopus(a)
clever_octopus(a)