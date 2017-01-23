class BonusDrink
  BONUS_AMOUNT = 3

  def self.total_count_for(amount)
    empty_bottle_amount = amount = amount.to_i

    while empty_bottle_amount >= BONUS_AMOUNT
      #おまけでもらえる本数を計算する
      bonus_bottle_amount = empty_bottle_amount / BONUS_AMOUNT
      #おまけをもらうのに使っていない空き瓶の数を計算する
      empty_bottle_amount = bonus_bottle_amount + empty_bottle_amount % BONUS_AMOUNT
      #空き瓶の本数の合計を計算する
      amount += bonus_bottle_amount
    end

    return amount
  end
end

if $0 == __FILE__
  print "購入する飲み物の本数を入力してください >> "
  amount = gets.chomp
  if amount =~ /^\d+$/
    puts  "#{BonusDrink.total_count_for(amount)}本飲むことができます！"
  else
    puts "【Error】購入する本数は整数で入力してください！"
  end
end
