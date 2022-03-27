board = ["", "", "", "", "", "", "", "", ""]

def display(board)
    puts ""
    puts "  #{board[0]} | #{board[1]} | #{board[2]}"
    puts "----------"
    puts "  #{board[3]} | #{board[4]} | #{board[5]}"
    puts "----------"
    puts "  #{board[6]} | #{board[7]} | #{board[8]}"
    puts ""
end


class Player
    def initialize(marker : String)
        @marker = marker
    end

    def marker
        @marker
    end
end

x = Player.new "X"
o = Player.new "O"

def board_input(player, position, board)
    b_input = position.to_i - 1
    
    board[b_input] = player.marker
end

while true
    display(board)
    puts "Please enter a choice 1 - 9:"
    puts ""
    u_input = gets


    if u_input == "q"
        break
    end
end


display(board)