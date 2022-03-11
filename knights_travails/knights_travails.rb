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
            @considered_positions.any? do |seen|
                move[0] == seen[0] && move[1] == seen[1]
            end
        end
        
    end

    def self.valid_moves(pos)

    end


end