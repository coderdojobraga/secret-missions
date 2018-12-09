# https://www.reddit.com/r/dailyprogrammer/comments/7qn07r/20180115_challenge_347_easy_how_long_has_the/
require 'set'

class LigthOn
  def initialize
    @hours = Set.new
  end

  def count_hours(pair)
    arr = pair.split(/\s+/).map(&:to_i)
    @hours.merge(arr.first...arr.last)
  end

  def result
    puts @hours.count
  end

  def read(file)
    File.foreach(file) do |x|
      count_hours(x)
    end
  end
end

ligth = LigthOn.new
ligth.read(ARGV[0])
ligth.result
