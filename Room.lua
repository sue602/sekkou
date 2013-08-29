Room = class('Room')

function Room:initialize(col, row, width, height)
	self.x = col
	self.y = row
	self.w = width
	self.h = height
	self.tiles = {}
end

function Room:getPos()
	--Returns the CENTER of the box, otherwise just use Room.x, Room.y
	return math.ceil(self.x + (self.w / 2)), math.ceil(self.y + (self.h / 2))
end