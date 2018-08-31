def stock_picker(stock_prices)
  # do an if.else type in a for loop
  # for each number
  # iterate through the array
  # if the index/day is higher && the stock price itself is higher
  # subtract stock price[0] from stock price [i] & push the "profit" to a var
  # push the indexes of both stock prices to a new var
  # if a new profit is greater than the var profit, reassign it to the new profit
  #  && reassign the two indexes so that the new indexes have them
  # once you have the highest profit possible and the function is finished
  # push the two indexes (buy date and sell date)
  profit = 0
  buy_date = ''
  sell_date = ''
  for x in 0..(stock_prices.length-2) do
    for y in (x+1)..(stock_prices.length-1) do
      if stock_prices[y] - stock_prices[x] > profit
        profit = stock_prices[y] - stock_prices[x]
        buy_date = x
        sell_date = y
      end
    end
  end
  puts(buy_date, sell_date)
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
