def sum_to(num)
    sum = 0
    if num == 1
        return 1
    elsif num < 1
        return nil
    else
       sum += num + sum_to(num-1)
    end
    return sum
end


def add_numbers(array)
    sum = 0
    if array.length == 0
        return nil
    elsif array.length == 1
        return array[0]
    else
        sum = array[0] + add_numbers(array[1..-1])
    end

    sum
end

def gamma_fnc(n)
    sum = 0
    if n == 0
        return nil
    elsif n == 1
        return 1
    else
        sum = (n-1) * gamma_fnc(n-1)
    end

    return sum
end

def ice_cream_shop(array, favorite)
    newArr = []
    bool = true
    if array.length == 0
        newArr << false
    else
       if array[0] == favorite
            newArr << true
       else
            newArr << ice_cream_shop(array[1..-1], favorite)
       end
    end
    return newArr.any?{|val| val == true}
end


def reverse(string)
    newString = ""
    if string.length == 0
        return ""
    end
    if string.length == 1
        return string
    else
        newString += string[-1] + reverse(string[0..-2])
    end
    return newString
end
  # Test Cases
#  p sum_to(5)  # => returns 15
#  p sum_to(1)  # => returns 1
#  p sum_to(9)  # => returns 45
#  p sum_to(-8)  # => returns nil

#   # Test Cases
# p add_numbers([1,2,3,4]) # => returns 10
# p add_numbers([3]) # => returns 3
# p add_numbers([-80,34,7]) # => returns -39
# p add_numbers([]) # => returns nil

#   # Test Cases
# p gamma_fnc(0)  # => returns nil
# p gamma_fnc(1)  # => returns 1
# p gamma_fnc(4)  # => returns 6
# p gamma_fnc(8)  # => returns 5040


# Test Cases
p  ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
p  ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
p  ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
p  ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
p  ice_cream_shop([], 'honey lavender')  # => returns false


#   # Test Cases
#   p reverse("house") # => "esuoh"
#   p reverse("dog") # => "god"
#   p reverse("atom") # => "mota"
#   p reverse("q") # => "q"
#   p reverse("id") # => "di"
#   p reverse("") # => ""