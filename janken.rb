aiko = 0

loop do
  if aiko == 0
    puts "じゃんけん..."
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    janken_type = gets.chomp.to_i
    if janken_type !=3
      puts "ホイ"
    end
  elsif aiko == 1
    puts "あいこで..."
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    janken_type = gets.chomp.to_i
    if janken_type != 3
      puts "ショイ"
    end
    aiko = 0
  end

  random_num = rand(0...3)

#相手が出した手を表示させるメソッド
  def janken_pc(type)
    case type
      when 0
        puts "相手:グーを出しました"
      when 1
        puts "相手:チョキを出しました"
      when 2
        puts "相手:パーを出しました"
    end
    puts "-------------------------"
  end

  puts "-------------------------"
  case janken_type
    when 0
      puts "あなた:グーを出しました"
      janken_pc(random_num)
      if random_num == 0
        aiko = 1
      elsif random_num == 1
        winner = "あなた"
      elsif random_num == 2
        winner = "相手"
      end
    when 1
      puts "あなた:チョキを出しました"
      janken_pc(random_num)
      if random_num == 0
        winner = "相手"
      elsif random_num == 1
        aiko = 1
      elsif random_num == 2
        winner = "あなた"
      end
    when 2
      puts "あなた:パーを出しました"
      janken_pc(random_num)
      if random_num == 0
        winner = "あなた"
      elsif random_num == 1
        winner = "相手"
      elsif random_num == 2
        aiko = 1
      end
    when 3
      break
  end

  if aiko == 0
    puts "あっち向いて〜"
    puts "0(上)1(下)2(左)3(右)"
    direction = gets.chomp.to_i
    puts "ホイ!"
    puts "-------------------------"
    random_num = rand(0...4)

#あっち向いてホイの方向を文字列で格納するメソッド
    def direction_content(num)
      case num
        when 0
          content = "上"
        when 1
          content =  "下"
        when 2
          content =  "左"
        when 3
          content = "右"
      end
      return content
    end

    player_direction = direction_content(direction)
    pc_direction = direction_content(random_num)

    puts "あなた:" + player_direction
    puts "相手:" + pc_direction

    if player_direction == pc_direction
      puts "Winner:" + winner + "!!"
      break
    else
      puts "-------------------------"
    end
  end
end
