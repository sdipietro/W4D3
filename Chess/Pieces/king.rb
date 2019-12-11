require_relative "./piece.rb"
require_relative "./steppable.rb"

class King < Piece 
    include Slideable

    def symbol
        if self.color = :white
            U+2654
        else
            U+265A
        end
    end


end
