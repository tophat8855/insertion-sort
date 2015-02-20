#array = [4, 12, 5, 25, 1]

array = %w(
  87   76   82   75   84   29   51   52   23   31   22   79   85   94    8   72   81   80   64   40   38   16   50   60   48   33   70   69   34   19    5   11   35   53   14   74   86   61   49   65   92   13   18   44    4   71   26   56   36   83   32   46    3    1   93   54   67   39    7   15   89   68    9  100   10   59   47   66   37   41   57   90   30   42   77   58   45   97   21    6   27    2   20   28   96   95   43   12   24   88   78   63   62   25   91   17   73   98   99   55
).map!{|x| x.to_i}

def sort(array)
  bookmark = 0
  time_to_do_things = array.length - 1
  time_to_do_things.times do
    time_to_do_things.times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
      end
      bookmark = check_sorted(bookmark, array)
      p array
    end
  end
end

def check_sorted(bookmark, array)
  bookmark.downto(1) do |j|
    back_sort([array[j], array[j+1]])
    bookmark += 1
  end
  bookmark
end

def back_sort(nums)
  if nums[0] > nums[1]
    nums[0], nums[1] = nums[1], nums[0]
  end
end


sort(array)
