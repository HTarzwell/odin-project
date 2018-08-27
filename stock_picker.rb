def stock_picker(stock_prices)
  day_array = Hash[stock_prices.map.with_index { |x, i| [i, x] }]
  current_value = []
  biggest_split = nil
  best_days = []
  day_array.each_value { |value| current_value = value }
  puts current_value
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
