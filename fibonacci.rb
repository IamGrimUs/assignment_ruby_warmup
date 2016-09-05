def fibonacci(count)
  fib_sequence = []
  (count).times do |current_count|
    if current_count == 0
      fib_sequence[current_count] = 1
    elsif current_count == 1
      fib_sequence[current_count] = 1
    else
      fib_sequence[current_count] = fib_sequence[current_count - 1] + fib_sequence[current_count - 2]
    end
  end
  puts fib_sequence[0..count]
end

fibonacci(7)