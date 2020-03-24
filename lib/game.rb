# rubocop:disable Metrics/AbcSize,Metrics/CyclomaticComplexity,Metrics/PerceivedComplexity
class Game
  def winning_condition(arr, *_player_name)
    if (arr[0] == arr[1] && arr[1] == arr[2]) && arr[0..2].none?('_')
      true
    elsif (arr[3] == arr[4] && arr[4] == arr[5]) && arr[3..5].none?('_')
      true
    elsif (arr[6] == arr[7] && arr[7] == arr[8]) && arr[6..8].none?('_')
      true
    elsif (arr[0] == arr[3] && arr[3] == arr[6]) && !arr.values_at(0, 3, 6).include?('_')
      true
    elsif (arr[1] == arr[4] && arr[4] == arr[7]) && !arr.values_at(1, 4, 7).include?('_')
      true
    elsif (arr[2] == arr[5] && arr[5] == arr[8]) && !arr.values_at(2, 5, 8).include?('_')
      true
    elsif (arr[0] == arr[4] && arr[4] == arr[8]) && !arr.values_at(0, 4, 8).include?('_')
      true
    elsif (arr[2] == arr[4] && arr[4] == arr[6]) && !arr.values_at(2, 4, 6).include?('_')
      true
    else
      false
    end
  end
end
# rubocop:enable Metrics/AbcSize,Metrics/CyclomaticComplexity,Metrics/PerceivedComplexity
