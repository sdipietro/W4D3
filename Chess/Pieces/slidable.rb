module Slideable 

    HORIZONTAL_DIRS = [
        [0,+1],
        [0,-1],
        [+1,0],
        [-1,0]
    ]

    DIAGONAL_DIRS = [
        [+1,+1],
        [-1,-1],
        [+1,-1],
        [-1,+1]
    ]


    def horizontal_dir
        HORIZONTAL_DIRS
    end


    def diagonal_dir
        DIAGONAL_DIRS
    end


    def moves
        #return array of all possible moves from current pos
        moves = []
        move_dirs.each do |row, col|
            moves += grow_unblocked_moves_dir(row, col)
        end
        moves
    end

    private 

    def move_dirs
        #raise an error
        #will be overwritten in subclasses to contain whether the 
        #piece can move diagonally, horizontally, or both
        raise "No move directions."
    end

    def grow_unblocked_moves_dir(row, col)
        #return an array of all moves that piece can make based on what
        #directions it can move in
        moves = []

        cur_row, cur_col = self.pos
      
        new_pos = [cur_row + row, cur_col + col]

        # if new_pos.all? { |coord| coord.between?(0, 7) }
        #     valid_moves << new_pos
        # end

        moves
    end
    
end