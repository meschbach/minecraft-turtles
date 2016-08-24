-- tree
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
--
-- Intent:
--
--	Harvest a tree which is 1 wide and 1 deep.
--
-- Usage:
--
--	Place the turtle in front of the base of the turtle of the tree.
--

--
-- Dig into the trunk of tree
--
turtle.dig()
turtle.forward()

--
-- Dig up until nothing is detected above the turtle
--
local goneUp = 0
while turtle.detectUp() do
	turtle.digUp()

	turtle.up()
	goneUp = goneUp + 1
end

--
-- Return back to the original level of the turtle.
--
for returnedDown = 1, goneUp, 1 do
	turtle.down()
end
