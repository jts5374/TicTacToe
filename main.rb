require_relative "./ttt_init.rb"

newgame=Tictactoe.new


while !newgame.gameover?
    system "clear"
    newgame.show_board
    print newgame.player + " Choose a position: "
    newgame.turn(gets.chomp.to_i)
    newgame.show_board
    newgame.gameover
end