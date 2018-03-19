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

local text = native.newTextField( 600, 500, 750, 100)

local instructions = display.newText( "Enter An Integer", display.contentCenterX, 200, native.systemFont, 100)
instructions:setTextColor(1, 1, 1)
