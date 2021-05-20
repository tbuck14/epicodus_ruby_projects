def primes_less_than(num)
    arr = []
    (2..num).each {|n| arr << n}
    prime = 2
    until prime == num
        for i in arr 
            if i != prime 
                arr.delete_at(arr.find_index(i)) if i%prime == 0
            end
        end
        prime +=1
    end
    arr
end