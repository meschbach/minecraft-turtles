local args = {...}
local count = args[1] or 1

for i = 1, count, 1 do
	turtle.foward()
end
