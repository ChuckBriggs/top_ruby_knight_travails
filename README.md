# top_ruby_knight_travails
https://www.theodinproject.com/courses/ruby-programming/lessons/knights-travails

# Introduction

Now you’re a pro with DFS and BFS. Let’s try using our search algorithms on a
real problem.

For this project, you’ll need to use a data structure that’s similar (but not
identical) to a binary tree. For a summary of a few different examples,
reference this article.

A knight in chess can move to any square on the standard 8x8 chess board from
any other square on the board, given enough turns (don’t believe it? See this
animation). Its basic move is two steps forward and one step to the side. It can
face any direction.

All the possible places you can end up after one move look like this:

https://i.imgur.com/mHQqH08.gif

# Assignment

Your task is to build a function knight_moves that shows the simplest possible
way to get from one square to another by outputting all squares the knight will
stop on along the way.

You can think of the board as having 2-dimensional coordinates. Your function
would therefore look like:

    knight_moves([0,0],[1,2]) == [[0,0],[1,2]]
    knight_moves([0,0],[3,3]) == [[0,0],[1,2],[3,3]]
    knight_moves([3,3],[0,0]) == [[3,3],[1,2],[0,0]]

  1.  Put together a script that creates a game board and a knight.

  2.  Treat all possible moves the knight could make as children in a tree.
      Don’t allow any moves to go off the board.

  3.  Decide which search algorithm is best to use for this case. Hint: one of
      them could be a potentially infinite series.
  
  4.  Use the chosen search algorithm to find the shortest path between the
      starting square (or node) and the ending square. Output what that full
      path looks like, e.g.:

      > knight_moves([3,3],[4,3])
      => You made it in 3 moves!  Here's your path:
        [3,3]
        [4,5]
        [2,4]
        [4,3]

################################################################################

# Notes

I had a real hard time figuring out where to start on this one. I was thinking
too much about the final project for the Ruby curriculum, which is a full chess
game, and how elements from this project could fit in to that one. The
instructions also threw me off the scent a bit, saying to "[p]ut together a
script that creates a game board and a knight." But the board element is pretty
useless at this juncture. And this and a chess game are different things to be
dealt with separately.

Also, at the time that I wrote most of the code, it was after midnight and I
still wasn't sure where to start. I was only intending on putting some notes
down to come back to in the morning. But instead my brain just kept shitting.
Next thing I know, it's almost 3 and I have a mostly-functional completed
assignment. Hence the pretty-much-finished nature of the initial commit. And the spaghetti.
