-- Digs a full height tunnel (3 heigh) by 1 wide
--
--
local args = {...}
local count = args[1] or 1

for i = 1, count, 1 do
	turtle.dig()
	turtle.foward()
	turtle.digUp()
	turtle.digDown()
end

