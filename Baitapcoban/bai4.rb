puts 'Nhập vào 3 số nguyên'
number1 = gets.chomp.to_i
number2 = gets.chomp.to_i
number3 = gets.chomp.to_i

def sort_numbers(a, b, c)
  if a > b
    t = a
    a = b
    b = t
    elsif b > c
    t = b
    b = c
    c = t
    elsif a > b
    t = a
    a = b
    b = t
  end
  puts "Thứ tự tăng dần: #{a} < #{b} < #{c}"
  puts "Thứ tự giảm dần: #{c} > #{b} > #{a}"
end

sort_numbers(number1, number2, number3)
