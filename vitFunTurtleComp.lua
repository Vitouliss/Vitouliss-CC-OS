localversion = "0.1" 
names = {}
commands = {"sayrandomstuff","getlabel","setlabel","hang","time","clearall","reboot","turnoff",
"alarm","cputime","addname","viewnames","getversion","help","updates","exitos"}

function getMinecraftTime()
	print("The current time is "..os.time())
end

function setAlarm(timetostart,interval,endmes)
	print("Number to start?:")
	local input = read()
	idiot = tonumber(input)
	timestostart = idiot

	print("Interval? (How fast to count down):")
	local input2 = read()
	inter = tonumber(input2)
	interval = inter

	print("End message?:")
	local input3 = read()
	endmes = input3

	for a = times,0,-interval do
		if a == 0 then
			print(endmes)
		else
			os.sleep(1)
		end
	end
end

function getCPUTime()
	print("The current CPU time is "..os.clock())
end

function shutthefrontdoor()
	print("Are you sure?:")
	local shutinput = read()
	if shutinput == "yes" then
	print("Shutting down in 2 seconds.")
	os.sleep(timetoshutdown)
	os.shutdown()
else
	print("NOT Shutting down. Just going to clear the screen.")
	term.clear()
	term.setCursorPos(1,1)
end

function rebootcomp()
	print("Okey...Make sure you DID save your stuff before REBOOT!!")
	os.Sleep(3)
	os.reboot()
end

function setLabel(label)
	print("What do you want it to be?:")
	local input = read()
	label = input
	os.setComputerLabel(label)
end

function getLabel()
	print("The label is:"..os.getComputerLabel())
end

function getVitoulissVersion()
	print("The current version of this thingy is "..localversion)
end

function hangcomp(timeha)
	print("Hang for how many seconds?:")
	local input = read()
	local hur = tonumber(input)
	timeha = hur
	os.sleep(timeha)
end

function getPossibleUpdates()
	print("Possible updates:")
	print("__________________")
	print("1. Better error messaging")
	print("2. Moar stuff")
	print("3. Moar pony's")
end

function addNameToComp(name)
	print("What is your name to add to the computer's memory?:")
	local input = read()
	name = input
	table.insert(names,1,name)
	print("Added the name to the computer.")
	print('Type in "viewnames" to get all of the peeps')
end

function viewnamesdude()
	for a,b in pairs(names) do
		print("Names: "..b)
		print("Total added: "..a)
	end
end

function clearall()
	term.clear()
	term.setCursorPos(1,1)
	end

function exitos()
for a = 3,0,-1 do
	if a == 0 then
		os.reboot()
	else
	print("Exiting in..."..a)
	os.sleep(1)
end
end
end 

function sayrandomstuff()
local hurstuff = {"hur...","I like trains","I liek trains","I liek traaaainnsss"}
for _,v in pairs(hurstuff) do
	print(os.getComputerLabel().." says: "..v)
end
end

function mainhelp()
print("The current commands are:")
print("__________________________")
for z,d in pairs(commands) do
	print(d)
	end
	print("Total commands currently: "..z)
end
--[[

Ohhhhh NOOOOOOOOOOOOOOOO! 

--]]

local masterinput = read()
if masterinput == "sayrandomstuff"
	sayrandomstuff()
	elseif masterinput == "clearall" then 
		clearall()
		elseif masterinput = "exitos" then
			exitos()
			elseif masterinput = "addname" then
				addNameToComp()
				elseif masterinput = "viewnames" then
					viewnamesdude()
					elseif masterinput = "hang" then
						hangcomp()
						elseif masterinput = "time" then
							getMinecraftTime()
							elseif masterinput = "alarm" then
								setAlarm()
								elseif masterinput = "cputime" then
									getCPUTime()
									elseif masterinput = "reboot" then
										rebootcomp()
										elseif masterinput = "turnoff" then
											shutthefrontdoor()
											elseif masterinput = "setlabel" then
												setLabel()
												elseif masterinput = "getlabel" then
													getLabel()
													elseif masterinput = "getversion" then
														getVitoulissVersion()
														elseif masterinput = "updates" then
															getPossibleUpdates()
															elseif masterinput = "help" then
																Mainhelp()
																elseif masterinput = string.find("%s") then
																print("Going to say anything?")
															else 
																print("I have no idea what you just said...Type in help if you need help.")
