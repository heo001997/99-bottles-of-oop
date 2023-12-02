class Bottles
  def verse(total_bottles)
    case total_bottles
    when 2
      "2 bottles of beer on the wall, 2 bottles of beer.\n" \
        "Take one down and pass it around, 1 bottle of beer on the wall.\n"
    when 1
      "1 bottle of beer on the wall, 1 bottle of beer.\n" \
        "Take it down and pass it around, no more bottles of beer on the wall.\n"
    when 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" \
        "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
      "#{total_bottles} bottles of beer on the wall, #{total_bottles} bottles of beer.\n" \
        "Take one down and pass it around, #{total_bottles - 1} bottles of beer on the wall.\n"
    end
  end

  def verses(start_bottles, end_bottles)
    result = []
    (start_bottles).downto(end_bottles) do |total_bottles|
      result << verse(total_bottles)
    end
    result.join("\n")
  end

  def song
    result = []
    (99).downto(0) do |total_bottles|
      result << verse(total_bottles)
    end
    result.join("\n")
  end
end
