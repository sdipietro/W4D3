require_relative "./piece.rb"
require_relative "./steppable.rb"

class Knight < Piece 
    include Slideable

    def symbol
        if self.color = :white
            U+2658
        else
            U+265E
        end
    end

end
