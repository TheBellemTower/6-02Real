-----------------------------------------------------------------------------------------
--
-- main.lua
--
--Created by Ethan Bellem
--Created on March 2018
--
--This program will determine whether or not a integer entered is positive or negative
-----------------------------------------------------------------------------------------

-- This piece of code will set the background and other G.U.I. elements

display.setDefault( "background", 0, 0, 0)

local button = display.newImageRect( "./assets/sprite/enterButton.png", 550, 300)
button.x = 1500
button.y = 500

local numberEntered

local textone = native.newTextField( 600, 500, 750, 100)

local instructions = display.newText( "Enter An Integer", display.contentCenterX, 200, native.systemFont, 100)
instructions:setTextColor(1, 1, 1)

-- now i will make a function to tell me wheter or not my number is positive or negative
local function onClick( event )
	numberEntered = tonumber(textone.text)


	if numberEntered > 0 then 
		instructions.alpha = 0
		button.alpha = 0
		local positiveText = display.newText( "Your Number is Positive", display.contentCenterX, display.contentCenterY, native.systemFont, 125)
		positiveText:setTextColor( 0, 1, 0 )
	else 
		if numberEntered < 0 then

		    instructions.alpha = 0
		    button.alpha = 0
		    local negativeText = display.newText("Your Number is Negative",display.contentCenterX, display.contentCenterY, native.systemFont, 125)
		    negativeText:setTextColor( 1, 0, 0 )
	    else
		    instructions.alpha = 0
		    button.alpha = 0
		    local zeroText = display.newText("Invalid Number",display.contentCenterX, display.contentCenterY, native.systemFont, 125)
		    zeroText:setTextColor( 0, 0, 1 )
		end    
	end

end


button:addEventListener("touch", onClick)