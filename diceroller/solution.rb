# https://www.reddit.com/r/dailyprogrammer/comments/8s0cy1/20180618_challenge_364_easy_create_a_dice_roller/

class DiceRoller
  def roll_b2(input)
    results = []
    num, sides = input.split("d").map(&:to_i)
    num.times do
      results.push(rand(2..sides))
    end
    puts "#{results.sum}: #{results.map(&:to_s).join(" ")}"
  end

  def roll(input)
    result = 0
    num, sides = input.split("d").map(&:to_i)
    num.times do
      result += rand(2..sides)
    end
    puts result
  end

  def read(file)
    File.foreach(file) do |x|
      roll_b2(x)
    end
  end
end

DiceRoller.new.read(ARGV[0])
