# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. 
# It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

# > stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4]  # for a profit of $15 - $3 == $12


days = [17,3,6,9,15,8,6,1,10]

def stock_picker(prices)
    min_day = 0
    buy_price = Float::INFINITY
    buy_day = 0
    sell_day = 0
    sell_price = 0
    
    prices.each_with_index do |price, day|
        if price < buy_price
            min_day = day
            buy_price = price
        end

        comparison_price = price - buy_price
        
        if comparison_price > sell_price
            sell_day = day
            sell_price = price
            buy_day = min_day
        end
    end

    p [buy_day, sell_day]
end

stock_picker(days)