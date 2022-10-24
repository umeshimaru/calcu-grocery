=begin 
入力 降水確率
処理 降水確率によって天気を分ける
出力 降水確率に合わせた天気予報を出す

=end 
n = gets.to_i

if n <= 30
  puts "sunny"
elsif n >= 31 &&  n <= 70
   puts "cloudy"
else puts "rainy"
 end 
   