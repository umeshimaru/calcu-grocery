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



  
  



# def calc(current_time, *product_numbers)
#     # 定数
#   discounted = 50 #玉ねぎ3つ
#   more_discounted = 100  #玉ねぎ5つ
    # combo_discounted = 20    #弁当と飲み物が選ばれた時の割引
  
  
#   # 商品一覧
#   list_items = [
#     ["玉ねぎ",100], #1
#     ["人参",150], #2
#     ["りんご",200], #3
#     ["ぶどう",350], #4
#     ["牛乳",180], #5
#     ["卵",220], #6
#     ["唐揚げ弁当",440], #7
#     ["のり弁",380], #8
#     ["お茶",80], #9
#     ["ｺｰﾋｰ",100], #10
            
    # ]
    # 商品の金額の合計(税抜)
    # price = 0
    
    # if current_time == 9..19 and product_numbers.count(1)  >= 5
    # for i in product_numbers 
    # price += list_items[i - 1][1]
    # end 
    #   price -=  more_discounted 
    
    # elsif current_time == 9..19 and 
    #   product_numbers.count(1) < 5 
    #   for i in product_numbers 
    #   price += list_items[i - 1][1]
    # end 
    #   price -= discounted
    
   
    
    # 弁当半額
    # elsif current_time == 20..23 and  product_numbers.count(7) >= 1 || product_numbers.count(8) >= 1
    # for i in product_numbers
    #   if i == 7 
    #   price += list_items[6][1] / 2
    #   elsif i == 8
    #   price += list_items[7][1] / 2
    #   else
    #   price += list_items[i - 1][1]
    # end 
    # end 
    # end 
    
    
    # 弁当と飲み物を一緒に買うと20円引きにする
  
  # 商品の金額の合計(税込)
#   tatal = price * 1.1
#   puts tatal.floor
  
# end 
 
# calc(20, 8)

# a = [ "a", "b", "c" ] 
# b = [ "a", "b", "c" ,"d","e"] 
# puts b.permutation(a.size).include?(a) 


=begin 
①弁当と飲み物の配列を作成する
②product_umbersの配列から弁当と飲み物に該当するproduct_numbersを順番に抜き出す
③①の弁当の配列と飲み物の配列にそのproduct_numberがあるかどうかを調べる
③20円引く
=end 



# def calc(current_time, *product_numbers)
     
     
# # # 商品一覧
#   list_items = [
#     ["玉ねぎ",100], #1
#     ["人参",150], #2
#     ["りんご",200], #3
#     ["ぶどう",350], #4
#     ["牛乳",180], #5
#     ["卵",220], #6
#     ["唐揚げ弁当",440], #7
#     ["のり弁",380], #8
#     ["お茶",80], #9
#     ["ｺｰﾋｰ",10]  #10
# ]
# bevarages = [5,9,10] #牛乳､お茶､ｺｰﾋｰ
# bento = [7,8] #唐揚げ弁当､のり弁当
# bevarages.each do |bevarage|
# bento.each do |bento|
#   if product_numbers.include?(bevarage) &&
#   product_numbers.include?(bento)

#     price -=　combo_discounted end 
# else 
# for i in product_numbers 
#     combo_discounted = 20
#     price = 0
#     price += list_items[i - 1][1]
#   end 
# end
# end 
# end 

# tatal = price * 1.1
#   puts tatal.floor
# end 

# calc(19, 5,7)

#スーパーで買った商品の合計金額を計算するプログラム
def calc(current_time, *product_numbers)#購入時刻と商品番号
  
  #税抜価格
  price = 0
  #税込価格
  total = 0
  
  #下の配列２つは
  #飲み物の商品番号
  bevarages = [1,2]
  #弁当の商品番号
  bentos = [3,4]
  
  #商品一覧
items_list = [ 
  ["コーラ",100],#商品番号１
  ["ファンタ",150],#商品番号２
  ["のり弁",450],#商品番号３
  ["幕の内弁当",500],#商品番号４
  ["洗剤",350]#商品番号５
 ]

#注文された商品番号に対する商品の税抜価格を計算しています。
# bevarages.each do |bevarage|
# bentos.each do |bento|
items_list.each do |item|
  if product_numbers.include?( && 
  product_numbers.include?()
  for i in product_numbers
    price += items_list[i - 1][1]
end
  price -= 20

else 
  for i in product_numbers
    price += items_list[i - 1][1]
end
end
end 
end 
total = price * 1.1
puts "商品購入時刻は#{current_time}時,合計#{total.floor}円です。
end

calc(20, 1,3)#第一引数に購入時刻、第二引数以降に商品番号が渡されます