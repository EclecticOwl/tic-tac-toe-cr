board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display(board)
    puts ""
    puts "  #{board[0]} | #{board[1]} | #{board[2]}"
    puts " -----------"
    puts "  #{board[3]} | #{board[4]} | #{board[5]}"
    puts " -----------"
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
    if position == "1"
        board[0] = player.marker
    elsif position == "2"
        board[1] = player.marker
    elsif position == "3"
        board[2] = player.marker
    elsif position == "4"
        board[3] = player.marker
    elsif position == "5"
        board[4] = player.marker
    elsif position == "6"
        board[5] = player.marker
    elsif position == "7"
        board[6] = player.marker
    elsif position == "8"
        board[7] = player.marker
    elsif position == "9"
        board[8] = player.marker
    end
end

def win_conditions(board)
    # Checking horizontally for win
    if board[0] == board[1] && board[0] == board[2] && board[0] != " "
        return true
    elsif board[3] == board[4] && board[3] == board[5] && board[3] != " "
        return true
    elsif board[6] == board[7] && board[6] == board[8] && board[6] != " "
        return true
    # Checking vertically for win
    elsif board[0] == board[3] && board[0] == board[6] && board[0] != " "
        return true
    elsif board[1] == board[4] && board[1] == board[7] && board[1] != " "
        return true
    elsif board[2] == board[5] && board[2] == board[8] && board[2] != " "
        return true
    # Checking diagonally for win
    elsif board[0] == board[4] && board[0] == board[8] && board[0] != " "
        return true
    elsif board[2] == board[4] && board[2] == board[6] && board[2] != " "
        return true
    end
end


player_state = 0

while true
    display(board)
    puts ""
    if player_state == 0
        puts "Player 1, Please select a choice between 1 - 9"
    else
        puts "Player 2, Please select a choice between 1 - 9"
    end
    u_input = gets

    if u_input == "q"
        break
    end

    if player_state == 0
        board_input(x, u_input, board)
    else
        board_input(o, u_input, board)
    end

    if (win_conditions(board) == true)
        break
    end

    if player_state == 0
        player_state = 1
    else
        player_state = 0
    end
end

def game_winner(board, player_state)
    display(board)

    if player_state == 0
        puts "Player 1 Wins!"
    else
        puts "Player 2 Wins!"
    end
end


game_winner(board, player_state)