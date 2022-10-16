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
#   discounted = 50 
#   more_discounted = 100
  
  
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
    
    
    # 弁当と飲み物を一緒に買うと２０円引きにする
  
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
②product_umbersの配列から弁当と飲み物に該当するproduct_numbersを抜き出す
③①の弁当の配列と飲み物の配列にそのproduct_numberがあるかどうかを調べる
③２０円引く
=end 

# def calc(current_time, *product_numbers)
# # 商品一覧
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
#   bentos = [7,8]
#   bevarages =[5,9,10]
#   bentos.each do |bento|
#   bevarages.each do |bevarage|
#   end 
#   end 
# end 
#   calc(20, 2,7,9)
  
  
  

list = [1, 2, 3, 4, 5]
 
list_new = list.select do |x|
  x == [3,5 ]
end
 
p list_new