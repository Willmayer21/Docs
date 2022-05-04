# Iterators and Blocks
# -An iterator is a method that browses through a collection’s (Array, Range, …) items
#  in order to perform an action or test a condition given in a block:

# -The #each method is the simplest way to do it.
      musicians.each do |musician|
        puts musician
      end

# -The iterators that return the transformed array: #select, #map, #find, #sort_by, etc…
      [1, 2, 3, 4].select { |i| i.even? } # => [2, 4]

# -The iterators that doesn’t return the original array,
#  but allow you to perform an action with each item: #each, #each_with_index. When using the latter,
#  you may need to define intermediate variables to store the result of the action performed:
      sum = 0
      counter = 0
      [1, 2, 3, 4].each do |i|
        sum += i
        counter += 1
      end

      sum
      # => 10

      counter
      # => 4

# -Iterators and Blocks - Yield
#  You need to use the yield keyword in your method’s definition.
#  When the method is called with a block, the block will be called when yield occurs:
      def timer
        start_time = Time.now
        yield
        puts "Elapsed time: #{Time.now - start_time}s"
      end

      timer do
        sleep(2)
      end
      # "Elapsed time: 2s"

# -A block is like an anonymous method, you can pass it as an argument to a method:
      #1
      do |num|
        num * 2
      end
      #2
      { |num| num * 2 }
