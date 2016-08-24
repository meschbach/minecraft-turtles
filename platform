-- platform 
--
-- Copyright 2014 Mark Eschbach
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
-- Copyright 2014 Mark Eschbach
--
-- Intent
--	Lay a square platform of a given material
--
-- Usage
--	Place the turtle one square back from left corner of the intended platform location
--
-- Approach
--	The turtle will spiral in by traversing three of the four sides.  The fourth side will be
--	filled in by using the length of the side - 1. Once the center has been reached then the
--	turtle will place a final block and stop.
--
-- Cost
--	The turtle will move once and place once per block of the area of the square.
--	Additionally the turtle will turn three times per distance from the center less one.
--	r = Length of a single side of the square
--	t = Energy cost of the program
--	v(r) = The cost of a side > 1
--	f(r) = The cost of filling a side
--
--	v(r) = 3r + ( r - 1 ) + 4 [ turns ] 
--
--	f(1) = 1 
--	f(r) = v(r) + v( r - 1 )

--
-- Checks inventory
--
function invCheck()
	slot = turtle.getSelectedSlot()
	while slot < 17 and turtle.getItemCount() == 0 do
		slot = slot + 1
		turtle.select( slot )
	end
end

--
-- Lays the next side 
--
function lay_leg( length )
	for count = 1, length, 1 do
		invCheck()
		turtle.forward()
		turtle.placeDown()
	end
end

--
-- Lays first side
--
function lay_firstSide( length )
	turtle.select( 1 )
	lay_side( length )
end

--
-- Lays next side
--
function lay_sides( length )
	lay_leg( length )
	turtle.turnRight()
end

--
-- Extract the size
--
local args = {...}
local length = args[1] or 1

lay_firstSide( length )

for radius = length - 1, 1, -1 do
	lay_sides( radius )
	lay_sides( radius )
end
