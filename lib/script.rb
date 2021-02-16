# frozen_string_literal: true
#require 'pry'; binding.pry #rubocop:disable all

require_relative 'board'
require_relative 'knight'

# include Board

def knight_moves(arr1 = [1, 0], arr2 = random_position)
  return unless Board.valid_space?(arr1) && Board.valid_space?(arr2)

  @queue = [Knight.new(arr1)]
  until @queue[0].position == arr2
    @queue[0].possible_moves.each { |move| @queue << Knight.new(move, @queue[0]) }
    @queue.shift
  end

  @history = [@queue[0]]
  @history.unshift(@history[0].sire) while @history[0].sire
  puts "You made it from #{arr1} to #{arr2} in #{@history.length - 1} moves! Here's your path:"
  @history.each { |pos| p pos.position }
end

def random_position
  [rand(8), rand(8)]
end

knight_moves
