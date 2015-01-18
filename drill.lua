-- Turtle digs a tunnel (1x1) an arbitrary number forward 
local args = {...}
local count = args[1] or 1

for i = 1, count, 1 do
	turtle.dig()
	turtle.forward()
end
