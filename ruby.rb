gou = [*1..100]
hoge = 1
hoge.upto(100) do |s|
  if 2 >=  s % 4

    p  gou.delete(s)
    p  gou

  end
end
