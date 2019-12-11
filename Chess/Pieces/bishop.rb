require_relative "./piece.rb"
require_relative "./slideable.rb"

class Bishop < Piece 
    include Slideable

    def symbol
        if self.color = :white
            U+2657
        else
            U+265D
        end
    end

end
