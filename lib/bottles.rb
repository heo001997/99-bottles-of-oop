class Bottles
  BEER_WALL = "of beer on the wall"
  BEER_DOWN = "down and pass it around"
  BEER = "of beer"

  def verse(total_bottles)
    case total_bottles
    when 2
      bottles_2_to_1
    when 1
      bottles_1_to_0
    when 0
      bottles_0
    else
      bottles_99_to_3(total_bottles)
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

  private

  def bottles_99_to_3(total_bottles)
    "#{total_bottles} bottles #{BEER_WALL}, #{total_bottles} bottles #{BEER}.\n" \
      "Take one #{BEER_DOWN}, #{total_bottles - 1} bottles #{BEER_WALL}.\n"
  end

  def bottles_2_to_1
    "2 bottles #{BEER_WALL}, 2 bottles #{BEER}.\n" \
      "Take one #{BEER_DOWN}, 1 bottle #{BEER_WALL}.\n"
  end

  def bottles_1_to_0
    "1 bottle #{BEER_WALL}, 1 bottle #{BEER}.\n" \
      "Take it #{BEER_DOWN}, no more bottles #{BEER_WALL}.\n"
  end

  def bottles_0
    "No more bottles #{BEER_WALL}, no more bottles #{BEER}.\n" \
      "Go to the store and buy some more, 99 bottles #{BEER_WALL}.\n"
  end
end
