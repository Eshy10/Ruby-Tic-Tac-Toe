# rubocop:disable Metrics/AbcSize,Metrics/CyclomaticComplexity,Metrics/MethodLength,Metrics/PerceivedComplexity
class Game
  def winning_condition(arr, player_name)
    if (arr[0] == arr[1] && arr[1] == arr[2]) && arr[0..2].none?('_')
      puts "#{player_name} won on first line"
      true
    elsif (arr[3] == arr[4] && arr[4] == arr[5]) && arr[3..5].none?('_')
      puts "#{player_name} won on the second line"
      true
    elsif (arr[6] == arr[7] && arr[7] == arr[8]) && arr[6..8].none?('_')
      puts "#{player_name} won on the third line"
      true
    elsif (arr[0] == arr[3] && arr[3] == arr[6]) && !arr.values_at(0, 3, 6).include?('_')
      puts "#{player_name} won on the first column"
      true
    elsif (arr[1] == arr[4] && arr[4] == arr[7]) && !arr.values_at(1, 4, 7).include?('_')
      puts "#{player_name} won on the second column"
      true
    elsif (arr[2] == arr[5] && arr[5] == arr[8]) && !arr.values_at(2, 5, 8).include?('_')
      puts "#{player_name} won on the third column"
      true
    elsif (arr[0] == arr[4] && arr[4] == arr[8]) && !arr.values_at(0, 4, 8).include?('_')
      puts "#{player_name} won on the left diagonal"
      true
    elsif (arr[2] == arr[4] && arr[4] == arr[6]) && !arr.values_at(2, 4, 6).include?('_')
      puts "#{player_name} won on the right diagonal"
      true
    elsif !arr.include?('_')
      puts 'Draw'
      true
    end
  end

  def occupied?(arr, index, sym)
    if !arr[index].include?('_')
      puts 'Pick another value between 0 and 8, cell occupied, dont be a dummy!'
      index = gets.chomp.to_i
      if index > 8
        puts 'Please pick a number between 0 and 8!'
        index = gets.chomp.to_i
        occupied?(arr, index, sym)
      end
    else
      arr[index.to_i] = sym
    end
  end

  def number_valid?(number, player_name)
    if number > 8
      puts "#{player_name} put a value less then 9"
      number = gets.chomp.to_i
      number_valid?(number, player_name)
    else
      number
    end
  end
end
# rubocop:enable Metrics/AbcSize,Metrics/CyclomaticComplexity,Metrics/MethodLength,Metrics/PerceivedComplexity
