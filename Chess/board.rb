require "Singleton"
require_relative "./pieces/null.rb"
require_relative "./pieces/bishop.rb"
require_relative "./pieces/king.rb"
require_relative "./pieces/knight.rb"
require_relative "./pieces/pawn.rb"
require_relative "./pieces/queen.rb"
require_relative "./pieces/rook.rb"
require "byebug"

class Board

    attr_reader :grid, :sentinel

    def initialize
        @grid = Array.new(8) { Array.new(8) }
        @sentinel = NullPiece.instance
        populate_board
    end

    def populate_board
        rows = [0, 1, 6, 7]
        grid.each_with_index do |row, row_idx| 
            grid.each_with_index do |col, col_idx| 
                if rows.include?(row_idx)
                    grid[row_idx][col_idx] = 'P'
                else 
                    grid[row_idx][col_idx] = "s"
                end
            end
        end
    end

    def [](pos)
        row, col = pos
        @grid[row][col]
    end

    def []=(pos, val)
        row, col = pos
        @grid[row][col] = val
    end

    def valid_pos?(pos)
        row, col = pos
        return true if row.between?(0, 7) && col.between?(0, 7)
        false
    end

    def move_piece(start_pos, end_pos)
        #check if start_pos and end end_pos are valid positions
        #if true call move_piece!
    end

    def move_piece!(start_pos, end_pos)
        raise "No Piece" if start_pos == sentinel
        raise "Cannot move there" unless valid_pos?(end_pos)
        piece = self[start_pos]
        self[end_pos] = piece
        self[start_pos] = 's' 
    end
    
    def add_piece(piece, pos)
        self[pos] = piece
    end

    def checkmate?(color)
        king.color
    end

    def in_check?(color)

    end

    def find_king(color)

    end

    def pieces

    end

    def dup

    end

end