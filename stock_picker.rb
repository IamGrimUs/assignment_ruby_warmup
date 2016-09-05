def stock_picker(prices)

  best_buy = nil
  best_sell = nil
  max_profit = 0

  # pass all valid buy dates as an index to the price array (-2 because can't buy on last day)
  (0..(prices.length - 2)).each do |buy_date|
    # iterate through every sell date starting from a given buy date
    ((buy_date + 1)..prices.length - 1).each do |sell_date|

      #check the profit for this pair of days
      price_difference = prices[sell_date] - prices[buy_date]

      #see if this is the best profit so far, if so save it
      if price_difference > max_profit
        best_buy = buy_date
        best_sell = sell_date
        max_profit = price_difference
      end
    end
  end

  return [best_buy, best_sell]
end

stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])