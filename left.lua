local args = {...}
local count = args[1] or 1

turtle.turnLeft()
for i = 1, count, 1 do
	turtle.forward()
end
turtle.turnRight()
