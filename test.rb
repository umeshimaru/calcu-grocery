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
  list_items = [
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
    
     if current_time == 9..19 and numbers.count(1)  >= 5
    for i in numbers 
    price += list_items[i - 1][1]
    end 
    price -= 100 
    
    elsif current_time == 9..19 and 
    numbers.count(1) < 5 
    for i in numbers 
    price += list_items[i - 1][1]
    end 
    price -= 50
    
   
    
    elsif current_time == 20..23 and  numbers.count(7) >= 1 || numbers.count(8) >= 1
    for i in numbers
      if i == 7 
      price += list_items[6][1] / 2
      elsif i == 8
      price += list_items[7][1] / 2
      else
      price += list_items[i - 1][1]
    end 
    end 
    end 
    
    
    # 弁当と飲み物を一緒に買うと２０円引きにする
  
  # 商品の金額の合計(税込)
  tatal = price * 1.1
  puts tatal.floor
  
end 
 
calc(20, 8)



