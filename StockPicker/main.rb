def stock_picker (stocks)
    best = [0, 0]

    stocks.each_with_index do |buyprice, buyday|
        stocks.each_with_index do |sellprice, sellday|
            if sellday > buyday
                if (sellprice - buyprice) > (stocks[best[1]] - stocks[best[0]])
                    best = [buyday, sellday]
                end
            end
        end
    end
    p best
end

stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4]  # for a profit of $15 - $3 == $12