class Piece

    attr_reader :position

    def initiliaze(color,board,position)
        @color, @board, @position = color,board,position
    end
    
    def empty?
        false
    end

    def valid_moves

    end

end