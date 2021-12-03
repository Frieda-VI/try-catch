# Try-Catch

A simple and easy to use try and catch module for Lua. It's meant to simplify the way you handle error in your game, if you have a C# background, you would probably find this easy to use and helpful.

## Getting Started

### Setting up

> Visual Studio Code

1. Download the repository.
2. Copy and paste the try-catch folder into VSC.
3. [Point it to ReplicatedStorage](https://github.com/Frieda-VI/try-catch/blob/main/default.project.json) or a custom Location. 

> Roblox Studio

1. Copy the [code](https://github.com/Frieda-VI/try-catch/blob/main/try-catch/init.lua)
2. Paste it in a script, place the script in a custom location.

### Usage

```lua

--// Requiring and localising \\--
local TryAndCatch = require(game:GetService("ReplicatedStorage"):WaitForChild("try-catch"))
local Try = TryAndCatch.Try


--// Usage \\--
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
```

In other words, 
```lua
  local TryAndCatch = require(game:GetService("ReplicatedStorage"):WaitForChild("try-catch"))
  TryAndCatch.Try({FUNCTION, Catch = FUNCTION})
```

The first Argument in the table is a function that will be execute, and the **Catch** index is the function that will be called if there was an Error while executing the Function. 

> Features

- Arguments cannot be passed the Try function or the Catch function.
- Yielding is possible in the Catch function. 

### Issue

This is not perfect by any means. So if ever you find a bug or a problem, open an [issue](https://github.com/Frieda-VI/try-catch/issues) and I'll do my best to fix it. 
