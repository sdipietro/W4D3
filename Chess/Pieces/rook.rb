require_relative "./piece.rb"
require_relative "./slideable.rb"

class Rook < Piece 
    include Slideable

    def symbol
        if self.color = :white
            U+2656
        else
            U+265C
        end
    end

    def move_dirs
        HORIZONTAL_DIRS
    end

end
