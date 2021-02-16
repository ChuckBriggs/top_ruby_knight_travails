# frozen_string_literal: true
#require 'pry'; binding.pry #rubocop:disable all

class Board
  def initialize
  end

  def self.valid_space?(arr)
    tf = false
    if arr.length == 2
      tf = true
      tf = false if arr[0] < 0 || arr [0] > 7 || arr[1] < 0 || arr[1] > 7
    end
    tf
  end
end
