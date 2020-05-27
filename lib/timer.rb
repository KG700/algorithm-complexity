def timer(method)

  (5000..100000).step(5000).to_a.each do |number|

    # run method 10 times to warm up the laptop:
    10.times {
      array = create_array(number)
      array.send(method)
    }

    times = []
    101.times {
      array = create_array(number)
      times << time(method, array)
    }
    # print out the median to minimise impact of
    #outliers on results
    puts times.sort[51]
  end

end

def time(method, array)
  start = Time.now
  array.send(method)
  stop_timer = Time.now - start
end

def create_array(number)
  Array.new(number) { rand(1..100) }
end
