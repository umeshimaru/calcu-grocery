
#ｽｰﾊﾟｰで買った商品の合計金額を計算するﾌﾟﾛｸﾞﾗﾑ
def calc(current_time, product_numbers)#購入時刻と商品番号
  
  # 定数と変数
  #税抜価格
  without_tax = 0
  #税込価格
  total_tax_included = 0
  
  #飲み物
drinks = [5,8,9]
 
#弁当 
bentos = [7,8]
 
three_onion_discounted = 50 #玉ねぎ3つ
five_onion_discounted = 100  #玉ねぎ5つ
bento_drink_discounted = 20 #弁当と飲み物をセットで買うと２０円引き
 
  
  #商品一覧
items_list = [ 
  ["玉ねぎ",100],#商品番号1
  ["人参",150],#商品番号2
  ["りんご",200],#商品番号3
  ["ぶどう",350],#商品番号4
  ["牛乳",180],#商品番号5
  ["卵",220],#商品番号6
  ["唐揚げ弁当",440],#商品番号7
  ["のり弁",380],#商品番号8
  ["お茶",80],#商品番号9
  ["ｺｰﾋｰ",100],#商品番号10
]
 

  # 営業時間によって割引があるかないかが変わるプログラム
  case current_time
  
  when 9..19
    # 玉ねぎ３個の割引
  without_tax -= three_onion_discounted if product_numbers.count(1) == 3
  
  # 玉ねぎ５つの割引
  without_tax -= five_onion_discounted if product_numbers.count(1) == 5
  
   
  #注文された商品番号に弁当と飲み物が含まれているとき20円びきをする税抜価格を計算しています｡
if product_numbers.any? {|p| drinks.include?(p)} && product_numbers.any? {|a| bentos.include?(a)} 
for i in product_numbers
  without_tax += items_list[i - 1][1]
end 
without_tax -= bento_drink_discounted

else 
  for i in product_numbers
  without_tax += items_list[i - 1][1]
  end 
   
end 

    弁当半額セール
  when 20..23
    # 弁当半額
if bentos_array = product_numbers.select {|number| number == 8 || 7}
  product_numbers.delete(7)
  product_numbers.delete(8)
  bentos_array.each do |i|
    without_tax += items_list[i - 1][1] / 2
  
  end 
  product_numbers.each do |i|
    without_tax += items_list[i - 1][1]
  end 

else
    product_numbers.each do |i|
    without_tax += items_list[i - 1][1]
  end 

#     # 玉ねぎ３個の割引
#     without_tax -= three_onion_discounted if product_numbers.count(1) == 3
#   # 玉ねぎ５つの割引
#   without_tax -= five_onion_discounted if product_numbers.count(1) == 5
# end 
# #注文された商品番号に弁当と飲み物が含まれているとき20円びきをする税抜価格を計算しています｡
# if product_numbers.any? {|p| drinks.include?(p)} && product_numbers.any? {|a| bentos.include?(a)} 
# for i in product_numbers
#   without_tax += items_list[i - 1][1]
# end 
# without_tax -= bento_drink_discounted
# else 
#   for i in product_numbers
#   without_tax += items_list[i - 1][1]
# end 
# end 

    
  
# # 税込み価格の計算
# total_tax_included = without_tax * 1.1
# puts total_tax_included.floor

# end
end 
  end 


#第一引数に購入時刻､第二引数以降に商品番号が渡されます
calc(20,[7,8,1])


end 

