def sort_array_asc(arr)
    arr.sort
end

def sort_array_desc(arr)
    arr.sort.reverse
end

def sort_array_char_count(arr)
    arr.sort {|a, b|
        if a.length < b.length
            -1
        elsif a.length == b.length
            0
        else
            1
        end
    }    
end

def swap_elements(arr)
    tmp = arr[1]
    arr[1] = arr[2]
    arr[2] = tmp
    arr
end

def reverse_array(arr)
    arr.reverse
end

def kesha_maker(arr)
    new_arr = []
    arr.each {|str|
        str_arr = str.split("")
        str_arr[2] = "$"
        new_arr.push(str_arr.join)
    }
    return new_arr
end

def find_a(arr)
    arr.select {|e|
        e.start_with?("a")
    }
end

def sum_array(arr)
    arr.inject {|sum, n| sum + n}
end

def add_s(arr)
    arr.each_with_index.collect {|e, i|
        if i != 1
            "#{e}s"
        else
            e
        end
    }
end