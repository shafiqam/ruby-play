=begin
Implement a method #stock_picker that takes in an array of stock prices, one
for each hypothetical day. It should return a pair of days representing the
best day to buy and the best day to sell. Days start at 0.
=end

def stock_picker(prices_arr)
  left, right = 0, 1
  max_profit = 0
  day_pair = [left, right]

  while right < prices_arr.length
    # we are in a profit window, update max_profit and record a new pair
    # if found a larger profit
    if prices_arr[left] < prices_arr[right]
      profit = prices_arr[right] - prices_arr[left]
      if profit > max_profit
        max_profit = profit
        day_pair = [left, right]
      end
    else
      # found a new low price
      left = right
    end

    # progress through the prices array
    right += 1
  end

  day_pair
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
# [1,4]  # for a profit of $15 - $3 == $12
