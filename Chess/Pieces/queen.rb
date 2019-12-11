require_relative "./piece.rb"
require_relative "./slideable.rb"

class Queen < Piece 
    include Slideable

    def symbol
        if self.color = :white
            U+2655
        else
            U+265B
        end
    end

    def move_dirs
        HORIZONTAL_DIRS + DIAGONAL_DIRS
    end
end
