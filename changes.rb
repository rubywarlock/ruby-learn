module BoxPositionsConcern
	extend ActiveSupport::Concern
	attr_accessor :position
	
	class BoxPositions
		attr_accessor :top, :bottom, :left, :right
		
		def initialize
			@position = nil
		end
		
		def top?
			@position == "top"
		end
		
		def bottom?
			@position == "bottom"
		end
		
		def left?
			@position == "left"
		end
		
		def right?
			@position == "right"
		end
	end
	
	class BoxPosition
		attr_accessor :position
		
		def initialize
			@position = BoxPositions.new
		end
	end
	
end