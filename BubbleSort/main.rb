def bubble_sort (array)
    loops = array.length - 1

    loops.times do
        index = 0
        for element in array do
            unless array[index + 1].nil?
                if (array[index] > array[index + 1])
                    array[index], array[index + 1] = array[index + 1], array[index]
                end
            end
            index += 1
        end
        p array
    end
end

bubble_sort([4,3,78,2,0,2])
bubble_sort([213,231,445,23,12,56,78])