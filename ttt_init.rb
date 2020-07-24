class Tictactoe
    $winning_moves=[
        [0,1,2],
        [3,4,5],
        [6,7,8],
        [0,3,6],
        [1,4,7],
        [2,5,8],
        [0,4,8],
        [2,4,6]
    ]
    
    #------------------init-----------------------------------
    def initialize
        @board=["1","2","3","4","5","6","7","8","9"]
        @gameover=false
        @turnct=0

        
    end

    #------------------end init-------------------------------

    def turn(idx)
        
        if "123456789".include?(idx.to_s)
            if valid_move?(idx-1)
                make_move(idx-1)
            end
        end

    end

    def make_move(idx)
        if @turnct%2==0
            @board[idx]="X"
            @turnct+=1
        else
            @board[idx]="O"
            @turnct+=1

        end
    end

    def valid_move?(pos)
        return !(@board[pos]=="X" || @board[pos]=="O")
    end

    
   

    #-----------------outputs---------------------------------


    def gameover?
        @gameover
    end

    def show_board
        puts
        puts "#{@board[0]} | #{@board[1]} | #{@board[2]}"
        puts "---------"
        puts "#{@board[3]} | #{@board[4]} | #{@board[5]}"
        puts "---------"
        puts "#{@board[6]} | #{@board[7]} | #{@board[8]}"     
        puts
    end

    def player
        if @turnct%2==0
            return "X"

        else
            return "O"

        end
    end

    #------------end outputs-----------------------------

    #------------------------------------------------------
    
    def fullboard?
        (1..9).each do |p|
            @board.each do |q|
                if q==p.to_s
                    return false
                end
            end

        end
        true
    end
    def gameover
        $winning_moves.each do |arr|
            if @board[arr[0]]==@board[arr[1]] && @board[arr[1]]==@board[arr[2]]
                puts "The winner is #{@board[arr[0]]}"
                puts "GAME OVER"
                
                @gameover=true
            end
        end

        if fullboard?
            puts "DRAW"
            puts "GAMEOVER"
            @gameover=true
        end
                
    end

end