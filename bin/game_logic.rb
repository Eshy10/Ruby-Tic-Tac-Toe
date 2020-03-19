
class Logic

    def winning_condition(arr)
     if arr[0] == arr[1] && arr[1] == arr[2]
      puts 'you won on first line'
     elsif arr[3] == arr[4] && arr[4] == arr[5]
      puts 'you won on the second line'
    elsif arr[6] == arr[7] && arr[7] == arr[8]
      puts 'you won on the third line'
    elsif arr[0] == arr[3] && arr[3] == arr[6]
      puts 'you won on the first column'
    elsif arr[1] == arr[4] && arr[4] == arr[7]
      puts 'you won on the second column'
    elsif arr[2] == arr[5] && arr[5] == arr[8]
      puts 'you won on the third column'
    elsif arr[0] == arr[4] && arr[4] == arr[8]
      puts 'you won on the left diagonal'
    elsif arr[2] == arr[4] && arr[4] == arr[6]
      puts 'you won on the right diagonal'
    else
      puts 'you lose'
    end
  end

end
