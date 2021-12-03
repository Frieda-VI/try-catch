

local TryAndCatch = require(game:GetService("ReplicatedStorage"):WaitForChild("try-catch"))
local Try = TryAndCatch.Try


local WasHandle = Try {
	function()
		print("Camera: ".. workspace.Camera)
	end;

    Catch = function(_Error)
        task.wait(1)
        print("Oooh no, there was an Error!")
    end
}

if not WasHandle then
    print("Seems to be an even bigger issue!")
end