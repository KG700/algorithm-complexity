# Create a function that takes a number N and returns an array of the first N numbers in the fibonacci sequence.
#
# For example:
#
# N	-> expected return:
# 0 ->	[]
# 3	-> [0, 1, 1]
# 10 ->	[0, 1, 1, 2, 3, 5, 8, 13, 21, 34]

  def my_fibonacci(n)
    return [] if n == 0

    fibonacci_array = [0]
    return fibonacci_array if n == 1

    fibonacci_array = [0, 1]
    return fibonacci_array if n == 2

    (n - 2).times do
        a = fibonacci_array[-2]
        b = fibonacci_array[-1]
        fibonacci_array.push(a + b)
    end

    return fibonacci_array

  end
