require_relative "tree_node"

class KnightPathFinder

    def initialize(start)
        @root_node = PolyTreeNode.new(start)
        @considered_positions = [start]
        build_move_tree
    end

    def build_move_tree
        
    end

    def new_move_positions(pos)
        moves = KnightPathFinder.valid_moves(pos)
        new_moves = moves.select do |move|
            @considered_positions.none? do |seen|
                move[0] == seen[0] && move[1] == seen[1]
            end
        end
        @considered_positions.concat(new_moves)
        new_moves
    end

    def self.valid_moves(pos)
        #[0, 0]
        arr = []
        (-1).step(1, 2) do |i|
            (-2).step(2, 4) do |j|
                arr << [i, j]
                arr << [j, i]
            end
        end
        arr = arr.select do |(row, col)|
            (pos[0] + row).between?(0, 7) && (pos[1] + col).between?(0, 7)
        end
        arr.map do |(row, col)|
            [pos[0] + row, pos[1] + col]
        end

    end


end