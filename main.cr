board = ["", "", "", "", "", "", "", "", ""]

def display(board)
    puts "  #{board[0]} | #{board[1]} | #{board[2]}"
    puts "----------"
    puts "  #{board[3]} | #{board[4]} | #{board[5]}"
    puts "----------"
    puts "  #{board[6]} | #{board[7]} | #{board[8]}"
end


class Player
    def initialize(name)
        @name = name
    end

    def name
        @name
    end
end

x = Player.new "X"
o = Player.new "O"


display(board)