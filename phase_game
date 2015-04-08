
hp = 2
flag = 0
po = 0
#------------------------------------
puts "階段の段数を決めてください"
distance = gets.to_i
gou = [*1..distance]
land_mine = []
0.step(distance,5) do |s|
   bom_suu = rand(1..2)
   while bom_suu != 0 do
      land_mine.push(rand(s..(s+4)))
      bom_suu += - 1
   end
end
p land_mine.uniq
puts "地雷を設置しました"
#-------------------------------
until flag != 0 do
   puts "HP:#{hp}"
   puts "残り段数#{distance}"

   loop{
      puts "================"
      puts "1~５歩ずつすすめる"
      po = gets.to_i.abs
      if po <= 5  then
          distance += -po
          break
      end
      puts "もう一度選択してください"
   }

   if distance == 0
      flag = 3
   end

   if distance <= -1
      flag = 1
   end

   if land_mine.index(distance) != nil
      hp += -1
      flag = 2 if hp == 0
      puts "ドカン"
      puts "hpが減りました"
   end

end

case flag
when 1
   puts "登りすぎました"
when 2
   puts "hpの限界"
when 3
   puts "くりあ"
end
