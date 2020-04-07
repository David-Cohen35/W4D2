class Board
    
    attr_accessor :board
    def initialize
        @board = Array.new(8) {Array.new(8)}
        @sentinel = 'red'
        populate_board
    end

    def populate_board
        (0..7).each do |row|
            (0..7).each do |col|
                if row == 0 || row == 1
                    @board[row][col] = 'white'
                elsif row == 7 || row == 6
                    @bord[row][col] = 'black'
                else
                    @board[row[col]] = @sentinel
                end
            end
        end
    end

    def [](pos)
        row,col = pos
        @board[row][col]
    end

    def []=(pos,value)
        row,col = pos
        @board[row][col] = value
    end

    def valid_pos?(pos)
        return true unless (pos[0] < 0 || pos[0] > 8) && (pos[1] < 0 || pos[1] > 8)
        false
    end

    def add_piece(piece,pos)  
        self[pos] = piece
    end


    def move_piece(color,start_pos,end_pos)
        if start_pos.empty?
            raise "Starting position is empty"
        elsif !valid_pos?(pos)
            raise ""
        end
    end


end



# Your Board class should hold a 2-dimensional array (an array of arrays). Each position in the board either holds a moving Piece or a NullPiece (NullPiece will inherit from Piece).

# There are many different kinds of pieces in chess, and each moves a specific way. Based on their moves, they can be placed in four categories:

# Sliding pieces (Bishop/Rook/Queen)
# Stepping pieces (Knight/King)
# Null pieces (occupy the 'empty' spaces)
# Pawns (we'll do this class last)
# To start off, you'll want to create an empty Piece class as a placeholder for now. Write code for #initialize so we can setup the board with instances of Piece in locations where a Queen/Rook/Knight/ etc. will start and nil where the NullPiece will start.

# The Board class should have a #move_piece(start_pos, end_pos) method. This should update the 2D grid and also the moved piece's position. You'll want to raise an exception if:

# there is no piece at start_pos or
# the piece cannot move to end_pos.
# Time to test! Open up pry and load 'board.rb'. Create an instance of Board and check out different positions with board[pos]. Do you get back Piece instances where you expect to? Test out Board#move_piece(start_pos, end_pos), does it raise an error when there is no piece at the start? Does it successfully update the Board?

# Once you get some of your pieces moving around the board, call over your TA for a code-review.