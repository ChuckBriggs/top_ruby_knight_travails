# frozen_string_literal: true
#require 'pry'; binding.pry #rubocop:disable all

class Knight
  attr_reader :position, :sire, :possible_moves

  MOVEMENTS = [[-2, -1], [-2, 1], [-1, -2], [-1, 2], [1, -2], [1, 2], [2, -1], [2, 1]]

  def initialize(position = [1, 0], sire = nil)
    @position = position
    @sire = sire
    @possible_moves = find_possible_moves(@position)
  end

  def move(arr)
    @position = arr
    @possible_moves = find_possible_moves(@position)
  end

  def find_possible_moves(arr)
    moves = MOVEMENTS.map { |move| [move[0] + arr[0], move[1] + arr[1]] }
    moves.keep_if { |move| valid_space?(move) }
  end

  def valid_space?(arr)
    true_or_false = false
    if arr.length == 2
      true_or_false = true
      true_or_false = false if arr[0] < 0 || arr [0] > 7 || arr[1] < 0 || arr[1] > 7
    end
    true_or_false
  end
end
