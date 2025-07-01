class Calculator
  def self.usage
    puts <<~End
      計算方法 ->
      a : 足し算
      s : 引き算
      m : 掛け算
      d : 割り算
      e : 計算を終了する
      -------------
    End
  end

  def self.add(num1, num2)
    num1 + num2
  end

  def self.substract(num1, num2)
    num1 - num2
  end

  def self.multiply(num1, num2)
    num1 * num2
  end

  def self.divide(num1, num2)
    num1 / num2
  end
end

loop do
  puts '一つ目の値を入力してください ->'
  num1 = ($stdin.gets.chomp).to_i
  puts '二つ目の値を入力してください ->'
  num2 = ($stdin.gets.chomp).to_i

  Calculator.usage
  method = $stdin.gets.chomp

  case method
  when 'a'
    p Calculator.add(num1, num2)
  when 's'
    p Calculator.substract(num1, num2)
  when 'm'
    p Calculator.multiply(num1, num2)
  when 'd'
    p Calculator.divide(num1, num2)
  when 'e'
    exit
  else
    Calculator.usage
  end
end