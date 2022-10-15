=begin
①商品と料金を配列なりｵﾌﾞｼﾞｪｸﾄに格納して商品管理する
②指定したものを取り出す
③取り出したものに計算を加える
④条件指定

流れ
ｲﾝﾌﾟｯﾄ(商品番号)
処理(税金を加えて足し算)
ｱｳﾄﾌﾟｯﾄ(出力)
=end 


# def calc(current_time, *numbers)
#   # 商品一覧
#   goods = [
#     ["玉ねぎ",100],
#     ["人参",150],
#     ["りんご",200],
#     ["ぶどう",350],
#     ["牛乳",180],
#     ["卵",220],
#     ["唐揚げ弁当",440],
#     ["のり弁",380],
#     ["お茶",80],
#     ["ｺｰﾋｰ",100],
            
#     ]
#     # 商品の金額の合計(税抜)
#     price = 0
#     for i in numbers  
#     price += goods[i - 1][1]
#   end 
  
  
  
  
#   # 商品の金額の合計(税込)
#   tatal = price * 1.1
#   puts tatal.floor
  
  
  
  
  
  
# end 
 
# calc("15", 1,7)


def calc(current_time, *numbers)
  # 商品一覧
  goods = [
    ["玉ねぎ",100], #1
    ["人参",150], #2
    ["りんご",200], #3
    ["ぶどう",350], #4
    ["牛乳",180], #5
    ["卵",220], #6
    ["唐揚げ弁当",440], #7
    ["のり弁",380], #8
    ["お茶",80], #9
    ["ｺｰﾋｰ",100], #10
            
    ]
    # 商品の金額の合計(税抜)
    price = 0
    
    case current_time 
    
    when 9..19 
    for i in numbers  
    price += goods[i - 1][1]
    end 
    
    when 20..23 , numbers.count(7) >= 1, numbers.count(8) >= 1
    for i in numbers
      if i == 7 
      price += goods[6][1] / 2
      elsif i == 8
      price += goods[7][1] / 2
      else
      price += goods[i - 1][1]
    end 
    end 
    end 
  
  # 商品の金額の合計(税込)
  tatal = price * 1.1
  puts tatal.floor
  
end 
 
calc(21, 7,8,1)



# ary = [1, 2, 4, 2, 2 ,]
# if ary.count(2) == 4 
#   puts "hello"
# else puts "うんこ"
# end 