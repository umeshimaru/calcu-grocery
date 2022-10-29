def calc(product_numbers)
    
 without_tax = 0
  
  #商品一覧と値段
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
# 商品一覧の、のり弁か唐揚げ弁当の商品番号がproduct_numbersに入っていた場合は弁当半額
    if product_numbers.include?(7 || 8 )
     bentos_array = product_numbers.map! {  |number| number == 8} 
     puts bentos_array
  bentos_array.each do |i|
    without_tax += items_list[i - 1][1] / 2
     
  end 
    
  product_numbers.delete(7)
  product_numbers.delete(8)
  product_numbers.each do |c|
    without_tax += items_list[c - 1][1]
  end 
    else
    product_numbers.each do |i|
    without_tax += items_list[i - 1][1]
    
    
  end 
#   税抜き価格表示
#   puts without_tax
    end 


end
# 引数に商品番号が入っています
calc([1,2,8])

