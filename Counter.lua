---------------
--- GLOBALS ---
---------------

-- Main item zone containing all equipment to copy
itemZone = getObjectFromGUID("f55aed")

-- Player hand positions for card placement by color
playerHandPositions = {
    Blue = {-20.00, 5.00, 37.50},
    Green = {20.00, 5.00, 37.50},
    Purple = {-33.00, 5.00, -37.50},
    Red = {0.00, 5.00, -37.50},
    White = {33.00, 5.00, -37.50}
}

-- Positions for validation and warning tokens on numbered board spaces
numberTokenPositions = {
    {-18.01, 1.61, -1.09}, {-14.76, 1.61, -1.09}, {-11.52, 1.61, -1.09},
    {-8.22, 1.61, -1.09}, {-4.70, 1.61, -1.09}, {-1.47, 1.61, -1.09},
    {1.78, 1.61, -1.09}, {5.10, 1.61, -1.09}, {8.55, 1.61, -1.09},
    {11.79, 1.61, -1.09}, {15.14, 1.61, -1.09}, {18.34, 1.61, -1.09}
}

-- Current detonator dial position (lives remaining)
currentDialNum = 5

-- Players with double wire stands (Blue/Green in smaller games)
doubleHandColors = {}

-- Detonator dial rotations by lives remaining
dialRotations = {
    [0] = {0.00, 283.00, 0.00}, [1] = {0.00, 233.00, 0.00},
    [2] = {0.00, 191.00, 0.00}, [3] = {0.00, 150.00, 0.00},
    [4] = {0.00, 108.00, 0.00}, [5] = {0.00, 67.00, 0.00}
}

infoTokenPositions = { -- These are the standard positions of the info tokens. This changes slightly and is redefined later for when the mission number is greater than 54.
    {-10.65, 1.81, -5.20},
    {-9.13, 1.81, -5.20},
    {-7.61, 1.81, -5.20},
    {-6.09, 1.81, -5.20},
    {-4.57, 1.81, -5.20},
    {-3.04, 1.81, -5.20},
    {-10.65, 1.81, -7.65},
    {-9.13, 1.81, -7.65},
    {-7.61, 1.81, -7.65},
    {-6.09, 1.81, -7.65},
    {-4.57, 1.81, -7.65},
    {-3.04, 1.81, -7.65},
    {-6.85, 1.81, -10.10}
}

yellowMarkerPositions = { -- These are the positions on the board for the yellow markers used to indicate the yellow wire locations.
    {-16.60, 2.52, -0.57},
    {-13.29, 2.52, -0.57},
    {-9.98, 2.52, -0.57},
    {-6.65, 2.52, -0.57},
    {-3.33, 2.52, -0.57},
    {-0.02, 2.52, -0.57},
    {3.30, 2.52, -0.57},
    {6.61, 2.52, -0.57},
    {9.93, 2.52, -0.57},
    {13.39, 2.52, -0.57},
    {16.51, 2.52, -0.57}
}

redMarkerPositions = { -- These are the positions on the board for the red markers used to indicate the red wire locations.
    {-16.31, 2.52, -1.84},
    {-12.97, 2.52, -1.84},
    {-9.65, 2.52, -1.84},
    {-6.38, 2.52, -1.85},
    {-3.07, 2.52, -1.87},
    {0.28, 2.52, -1.85},
    {3.59, 2.52, -1.85},
    {6.91, 2.52, -1.89},
    {10.23, 2.52, -1.88},
    {13.65, 2.52, -1.88},
    {16.84, 2.52, -1.87}
}

characterPositions = { -- These are the positions on the table for the character cards.
    Blue    = {-24.28, 1.50, 19.00},
    Green   = {24.28, 1.50, 19.00},
    Purple  = {-33.00, 1.50, -19.00},
    Red     = {0.00, 1.50, -19.00},
    White   = {33.00, 1.50, -19.00}
}

characterRotations = { -- These are the rotations on the table for the character cards.
    Blue    = {0.00, 0.00, 0.00},
    Green   = {0.00, 0.00, 0.00},
    Purple  = {0.00, 180.00, 0.00},
    Red     = {0.00, 180.00, 0.00},
    White   = {0.00, 180.00, 0.00},
}

blueWiresPositions0 = { -- These are the wire positions on the blue player's first wire stand.
    {-4.61, 3.15, 30.00},
    {-5.74, 3.15, 30.00},
    {-6.90, 3.15, 30.00},
    {-8.06, 3.15, 30.00},
    {-9.21, 3.15, 30.00},
    {-10.38, 3.15, 30.00},
    {-11.53, 3.15, 30.00},
    {-12.71, 3.15, 30.00},
    {-13.84, 3.15, 30.00},
    {-15.03, 3.15, 30.00},
    {-16.16, 3.15, 30.00},
    {-17.32, 3.15, 30.00},
    {-18.46, 3.15, 30.00},
    {-19.66, 3.15, 30.00},
    {-20.80, 3.15, 30.00}
}

blueOuterWiresPositions0 = { -- These are the outer wire positions on the blue player's first wire stand. These are used in a few missions as a special requirement.
    {-23.21, 3.15, 30.00},
    {-2.21, 3.15, 30.00}
}

blueWiresPositions1 = { -- These are the wire positions on the blue player's second wire stand.
    {-27.75, 3.15, 30.00},
    {-28.88, 3.15, 30.00},
    {-30.04, 3.15, 30.00},
    {-31.20, 3.15, 30.00},
    {-32.35, 3.15, 30.00},
    {-33.52, 3.15, 30.00},
    {-34.67, 3.15, 30.00},
    {-35.85, 3.15, 30.00},
    {-36.98, 3.15, 30.00},
    {-38.17, 3.15, 30.00},
    {-39.30, 3.15, 30.00},
    {-40.46, 3.15, 30.00},
    {-41.60, 3.15, 30.00},
    {-42.80, 3.15, 30.00},
    {-43.94, 3.15, 30.00}
}

blueOuterWiresPositions1 = { -- These are the outer wire positions on the blue player's second wire stand. These are used in a few missions as a special requirement.
    {-46.35, 3.15, 30.00},
    {-25.35, 3.15, 30.00}
}

greenWiresPositions0 = { -- These are the wire positions on the green player's first wire stand.
    {20.81, 3.15, 30.00},
    {19.68, 3.15, 30.00},
    {18.52, 3.15, 30.00},
    {17.36, 3.15, 30.00},
    {16.21, 3.15, 30.00},
    {15.04, 3.15, 30.00},
    {13.89, 3.15, 30.00},
    {12.71, 3.15, 30.00},
    {11.58, 3.15, 30.00},
    {10.39, 3.15, 30.00},
    {9.26, 3.15, 30.00},
    {8.10, 3.15, 30.00},
    {6.96, 3.15, 30.00},
    {5.76, 3.15, 30.00},
    {4.62, 3.15, 30.00}
}

greenOuterWiresPositions0 = { -- These are the outer wire positions on the green player's first wire stand. These are used in a few missions as a special requirement.
    {2.21, 3.15, 30.00},
    {23.21, 3.15, 30.00}
}

greenWiresPositions1 = { -- These are the wire positions on the green player's second wire stand.
    {43.95, 3.15, 30.00},
    {42.82, 3.15, 30.00},
    {41.66, 3.15, 30.00},
    {40.50, 3.15, 30.00},
    {39.35, 3.15, 30.00},
    {38.18, 3.15, 30.00},
    {37.03, 3.15, 30.00},
    {35.85, 3.15, 30.00},
    {34.72, 3.15, 30.00},
    {33.53, 3.15, 30.00},
    {32.40, 3.15, 30.00},
    {31.24, 3.15, 30.00},
    {30.10, 3.15, 30.00},
    {28.90, 3.15, 30.00},
    {27.76, 3.15, 30.00}
}

greenOuterWiresPositions1 = { -- These are the outer wire positions on the green player's second wire stand. These are used in a few missions as a special requirement.
    {25.35, 3.15, 30.00},
    {46.35, 3.15, 30.00}
}

purpleWiresPositions = { -- These are the wire positions on the purple player's wire stand.
    {-41.10, 3.15, -30.00},
    {-39.97, 3.15, -30.00},
    {-38.81, 3.15, -30.00},
    {-37.65, 3.15, -30.00},
    {-36.50, 3.15, -30.00},
    {-35.33, 3.15, -30.00},
    {-34.18, 3.15, -30.00},
    {-33.00, 3.15, -30.00},
    {-31.87, 3.15, -30.00},
    {-30.68, 3.15, -30.00},
    {-29.55, 3.15, -30.00},
    {-28.39, 3.15, -30.00},
    {-27.25, 3.15, -30.00},
    {-26.05, 3.15, -30.00},
    {-24.91, 3.15, -30.00}
}

purpleOuterWiresPositions = { -- These are the outer wire positions on the purple player's wire stand. These are used in a few missions as a special requirement.
    {-22.50, 3.15, -30.00},
    {-43.50, 3.15, -30.00}
}

redWiresPositions = { -- These are the wire positions on the red player's wire stand.
    {-8.10, 3.15, -30.00},
    {-6.97, 3.15, -30.00},
    {-5.81, 3.15, -30.00},
    {-4.65, 3.15, -30.00},
    {-3.50, 3.15, -30.00},
    {-2.33, 3.15, -30.00},
    {-1.18, 3.15, -30.00},
    {0.00, 3.15, -30.00},
    {1.13, 3.15, -30.00},
    {2.32, 3.15, -30.00},
    {3.45, 3.15, -30.00},
    {4.61, 3.15, -30.00},
    {5.75, 3.15, -30.00},
    {6.95, 3.15, -30.00},
    {8.09, 3.15, -30.00}
}

redOuterWiresPositions = { -- These are the outer wire positions on the red player's wire stand. These are used in a few missions as a special requirement.
    {10.50, 3.15, -30.00},
    {-10.50, 3.15, -30.00}
}

whiteWiresPositions = { -- These are the wire positions on the white player's wire stand.
    {24.90, 3.15, -30.00},
    {26.03, 3.15, -30.00},
    {27.19, 3.15, -30.00},
    {28.35, 3.15, -30.00},
    {29.50, 3.15, -30.00},
    {30.67, 3.15, -30.00},
    {31.82, 3.15, -30.00},
    {33.00, 3.15, -30.00},
    {34.13, 3.15, -30.00},
    {35.32, 3.15, -30.00},
    {36.45, 3.15, -30.00},
    {37.61, 3.15, -30.00},
    {38.75, 3.15, -30.00},
    {39.95, 3.15, -30.00},
    {41.09, 3.15, -30.00}
}

whiteOuterWiresPositions = { -- These are the outer wire positions on the white player's wire stand. These are used in a few missions as a special requirement.
    {43.50, 3.15, -30.00},
    {22.50, 3.15, -30.00}
}

wireHandPositions0 = { -- This is a table of all of the wire stands (in the case of Blue and Green, this only includes their first wire stands).
    Blue    = blueWiresPositions0,
    Green   = greenWiresPositions0,
    Purple  = purpleWiresPositions,
    Red     = redWiresPositions,
    White   = whiteWiresPositions
}

wireHandPositions1 = { -- This is a table of all the second wire stands (only Blue and Green have these).
    Blue    = blueWiresPositions1,
    Green   = greenWiresPositions1,
}

wireOuterPositions0 = { -- This is a table of all of the outer wire stands (in the case of Blue and Green, this only includes their first wire stands).
    Blue    = blueOuterWiresPositions0,
    Green   = greenOuterWiresPositions0,
    Purple  = purpleOuterWiresPositions,
    Red     = redOuterWiresPositions,
    White   = whiteOuterWiresPositions
}

wireOuterPositions1 = { -- This is a table of all the second outer wire stands (only Blue and Green have these).
    Blue    = blueOuterWiresPositions1,
    Green   = greenOuterWiresPositions1
}

wireRotations = { -- These are the rotations for the wires depending on the colour to avoid wires rotating unnecessarily when leaving a player's hand.
    Blue    = {0.00, 180.00, 180.00},
    Green   = {0.00, 180.00,180.00},
    Purple  = {0.00, 0.00, 180.00},
    Red     = {0.00, 0.00, 180.00},
    White   = {0.00, 0.00, 180.00}
}

blueTokenPositions0 = { -- This is a list of all of the token position locations in front of the blue player's first wire stand.
    {-4.61, 1.50, 26.80},
    {-5.74, 1.50, 26.80},
    {-6.90, 1.50, 26.80},
    {-8.06, 1.50, 26.80},
    {-9.21, 1.50, 26.80},
    {-10.38, 1.50, 26.80},
    {-11.53, 1.50, 26.80},
    {-12.71, 1.50, 26.80},
    {-13.84, 1.50, 26.80},
    {-15.03, 1.50, 26.80},
    {-16.16, 1.50, 26.80},
    {-17.32, 1.50, 26.80},
    {-18.46, 1.50, 26.80},
    {-19.66, 1.50, 26.80},
    {-20.80, 1.50, 26.80}
}

blueTokenOuterPositions0 = { -- This is a list of all of the token position locations in front of the blue player's first outer wire stand.
    {-23.21, 1.50, 26.80},
    {-2.21, 1.50, 26.80}
}

blueTokenPositions1 = { -- This is a list of all of the token position locations in front of the blue player's second wire stand.
    {-27.75, 1.50, 26.80},
    {-28.88, 1.50, 26.80},
    {-30.04, 1.50, 26.80},
    {-31.20, 1.50, 26.80},
    {-32.35, 1.50, 26.80},
    {-33.52, 1.50, 26.80},
    {-34.67, 1.50, 26.80},
    {-35.85, 1.50, 26.80},
    {-36.98, 1.50, 26.80},
    {-38.17, 1.50, 26.80},
    {-39.30, 1.50, 26.80},
    {-40.46, 1.50, 26.80},
    {-41.60, 1.50, 26.80},
    {-42.80, 1.50, 26.80},
    {-43.94, 1.50, 26.80}
}

blueTokenOuterPositions1 = { -- This is a list of all of the token position locations in front of the blue player's second outer wire stand.
    {-46.35, 1.50, 26.80},
    {-25.35, 1.50, 26.80}
}

greenTokenPositions0 = { -- This is a list of all of the token position locations in front of the green player's first wire stand.
    {20.81, 1.50, 26.80},
    {19.68, 1.50, 26.80},
    {19.68, 1.50, 26.80},
    {17.36, 1.50, 26.80},
    {16.21, 1.50, 26.80},
    {15.04, 1.50, 26.80},
    {13.89, 1.50, 26.80},
    {12.71, 1.50, 26.80},
    {11.58, 1.50, 26.80},
    {10.39, 1.50, 26.80},
    {9.26, 1.50, 26.80},
    {8.10, 1.50, 26.80},
    {6.96, 1.50, 26.80},
    {5.76, 1.50, 26.80},
    {4.62, 1.50, 26.80}
}

greenTokenOuterPositions0 = { -- This is a list of all of the token position locations in front of the green player's first outer wire stand.
    {2.21, 1.50, 26.80},
    {23.21, 1.50, 26.80}
}

greenTokenPositions1 = { -- This is a list of all of the token position locations in front of the green player's second wire stand.
   {43.95, 1.50, 26.80},
   {42.82, 1.50, 26.80},
   {41.66, 1.50, 26.80},
   {40.50, 1.50, 26.80},
   {39.35, 1.50, 26.80},
   {38.18, 1.50, 26.80},
   {37.03, 1.50, 26.80},
   {35.85, 1.50, 26.80},
   {34.72, 1.50, 26.80},
   {33.53, 1.50, 26.80},
   {32.40, 1.50, 26.80},
   {31.24, 1.50, 26.80},
   {30.10, 1.50, 26.80},
   {28.90, 1.50, 26.80},
   {27.76, 1.50, 26.80}
}

greenTokenOuterPositions1 = { -- This is a list of all of the token position locations in front of the green player's second outer wire stand.
    {25.35, 1.50, 26.80},
    {46.35, 1.50, 26.80}
}

purpleTokenPositions = { -- This is a list of all of the token position locations in front of the purple player's wire stand.
    {-41.10, 1.50, -26.80},
    {-39.97, 1.50, -26.80},
    {-38.81, 1.50, -26.80},
    {-37.65, 1.50, -26.80},
    {-36.50, 1.50, -26.80},
    {-35.33, 1.50, -26.80},
    {-34.18, 1.50, -26.80},
    {-33.00, 1.50, -26.80},
    {-31.87, 1.50, -26.80},
    {-30.68, 1.50, -26.80},
    {-29.55, 1.50, -26.80},
    {-28.38, 1.50, -26.80},
    {-27.25, 1.50, -26.80},
    {-26.05, 1.50, -26.80},
    {-24.91, 1.50, -26.80}
}

purpleTokenOuterPositions = { -- This is a list of all of the token position locations in front of the purple player's outer wire stand.
    {-22.50, 1.50, -26.80},
    {-43.50, 1.50, -26.80}
}

redTokenPositions = { -- This is a list of all of the token position locations in front of the red player's wire stand.
    {-8.10, 1.50, -26.80},
    {-6.97, 1.50, -26.80},
    {-5.81, 1.50, -26.80},
    {-4.65, 1.50, -26.80},
    {-3.50, 1.50, -26.80},
    {-2.33, 1.50, -26.80},
    {-1.18, 1.50, -26.80},
    {0.00, 1.50, -26.80},
    {1.13, 1.50, -26.80},
    {2.32, 1.50, -26.80},
    {3.45, 1.50, -26.80},
    {4.61, 1.50, -26.80},
    {5.75, 1.50, -26.80},
    {6.95, 1.50, -26.80},
    {8.09, 1.50, -26.80}
}

redTokenOuterPositions = { -- This is a list of all of the token position locations in front of the red player's outer wire stand.
    {10.50, 1.50, -26.80},
    {-10.50, 1.50, -26.80}
}

whiteTokenPositions = { -- This is a list of all of the token position locations in front of the white player's wire stand.
    {24.90, 1.50, -26.80},
    {26.03, 1.50, -26.80},
    {27.19, 1.50, -26.80},
    {28.35, 1.50, -26.80},
    {29.50, 1.50, -26.80},
    {30.67, 1.50, -26.80},
    {31.82, 1.50, -26.80},
    {33.00, 1.50, -26.80},
    {34.13, 1.50, -26.80},
    {35.32, 1.50, -26.80},
    {36.45, 1.50, -26.80},
    {37.61, 1.50, -26.80},
    {38.75, 1.50, -26.80},
    {39.95, 1.50, -26.80},
    {41.09, 1.50, -26.80}
}

whiteTokenOuterPositions = { -- This is a list of all of the token position locations in front of the white player's outer wire stand.
    {43.50, 1.50, -26.80},
    {22.50, 1.50, -26.80}
}

tokenHandPositions0 = { -- This is a table of all of the token locations in front of the wire stands (in the case of Blue and Green, this only includes their first wire stands).
    Blue    = blueTokenPositions0,
    Green   = greenTokenPositions0,
    Purple  = purpleTokenPositions,
    Red     = redTokenPositions,
    White   = whiteTokenPositions
}

tokenHandPositions1 = { -- This is a table of all the token locations in front of the second wire stands (only Blue and Green have these).
    Blue    = blueTokenPositions1,
    Green   = greenTokenPositions1
}

tokenOuterPositions0 = { -- This is a table of all of the token locations in front of the outer wire stands (in the case of Blue and Green, this only includes their first wire stands).
    Blue    = blueTokenOuterPositions0,
    Green   = greenTokenOuterPositions0,
    Purple  = purpleTokenOuterPositions,
    Red     = redTokenOuterPositions,
    White   = whiteTokenOuterPositions
}

tokenOuterPositions1 = { -- This is a table of all the token locations in front of the second outer wire stands (only Blue and Green have these).
    Blue    = blueTokenOuterPositions1,
    Green   = greenTokenOuterPositions1
}

tokenHandRotations = { -- These are the rotations of the token locations to avoid unnecessary rotations later.
    Blue    = {0.00, 180.00, 0.00},
    Green   = {0.00, 180.00, 0.00},
    Purple  = {0.00, 0.00, 0.00},
    Red     = {0.00, 0.00, 0.00},
    White   = {0.00, 0.00, 0.00}
}

equipmentPositions = { -- These are the positions of the equipment on the board.
    {-14.58, 1.52, 5.49},
    {-7.29, 1.52, 5.72},
    {0.04, 1.52, 5.39},
    {7.35, 1.52, 5.62},
    {14.66, 1.52, 5.45}
}

buttonHeight = 423 -- This is a variable used to determine the button height of all the scripted buttons

characterCardSelection = {} -- This is used to determine what extra character cards are selected from mission 31 onwards.

playerNum = 0 -- This is used in various functions to keep track of the number of players in the game.

playerColors = {} -- This is used in various functions to keep track of the player colours in the game.

captainColor = "" -- This is used to determine the captain's colour in the game. This is set when the Start Mission button is pressed.

-- Initializes the counter object with Start Mission button
function onLoad()
    createStandardButton("startMission", "Start Mission", {0, 0.6}, 2000, 300)

    -- Dial control buttons (these have special properties)
    self.createButton({
        click_function = "moveDialClockwise",
        function_owner = self,
        label          = "→",
        scale          = { 1, 1, 1 },
        position       = { 1.9, 0.22, -11.3 },
        rotation       = { 0, 270, 0 },
        width          = 150,
        height         = 100,
        font_size      = 100
    })

    self.createButton({
        click_function = "moveDialAntiClockwise",
        function_owner = self,
        label          = "←",
        scale          = { 1, 1, 1 },
        position       = { 1.9, 0.22, -11 },
        rotation       = { 0, 270, 0 },
        width          = 150,
        height         = 100,
        font_size      = 100
    })
end

DEBUG = Global.getVar("DEBUG") -- Set to true to allow emulation of the game with a full setup without needing extra players (set yourself to Black to test).

DEBUG_PLAYER_COUNT = Global.getVar("DEBUG_PLAYER_COUNT") -- This is used to determine how many players are in the game when debugging. Set to 5 for a full game.

DEBUG_PLAYER_COLORS = {"Blue", "Green", "White", "Red", "Purple"} -- This is used to determine the player colours when debugging.

-----------------
--- UTILITIES ---
-----------------

-- Moves the detonator dial and announces the movement
function moveDial(newDialNum, playerColor, direction)
    colors = {
        Blue    = {0.118, 0.53, 1},
        Green   = {0.192, 0.701, 0.168},
        Purple  = {0.627, 0.125, 0.941},
        Red     = {0.856, 0.1, 0.094},
        White   = {1, 1, 1},
        Black   = {0, 0, 0}
    }

    local dial = getObjectsWithTag("Dial")[1]
    dial.setPosition({14.78, 1.61, -8.51})
    dial.setRotationSmooth(dialRotations[newDialNum])
    
    local zeroText = ""
    if newDialNum == 0 then
        zeroText = " KABOOM!"
    end

    printToAll(playerColor .. " moved the dial " .. direction .. " to " .. newDialNum .. "." .. zeroText, colors[playerColor])
end

-- Sets up spare equipment with position, rotation, and tag removal
function setupSpareEquipment(equipment, position, rotation)
    equipment.setPositionSmooth(position)
    equipment.setRotationSmooth(rotation)
    equipment.removeTag("Spare")
end

-- Clones token bags and positions them on the board
function cloneAndPositionTokenBags(tokenTags, position, keep)
    local tokensBag = searchGlobalBag(tokenTags, keep)[1]
    tokensBag.setPositionSmooth(position)
    tokensBag.setRotation({0.00, 180.00, 0.00})
    tokensBag.locked = true -- Lock the bag to prevent accidental movement
    return tokensBag
end

function cloneAndPositionTokens(tokenTags, position, tokenCount)
    local takenTable = {}
    for i = 1, tokenCount do
        local tokensBag = searchGlobalBag(tokenTags)[1]
        local taken = generateWithStandardProps(tokensBag, {position[1], position[2] + (0.2 * (i - 1)), position[3]}, {0.00, 180.00, 0.00}, false, true, false)
        table.insert(takenTable, taken)
    end
    return takenTable
end

-- Determines if equipment should be excluded based on mission and pack rules
function shouldExcludeEquipment(equipment, missionNum, yellowNum)
    -- Check configuration structure
    if shouldExcludeEquipmentByConfig(equipment.name, equipment.description, missionNum, yellowNum) then
        return true
    end
    return false
end

-- Sets rule card rotations for all three rule cards (A, B, C)
function setRuleCardRotations(rotationA, rotationB, rotationC)
    getObjectsWithTag("RuleA")[1].setRotation(rotationA)
    getObjectsWithTag("RuleB")[1].setRotation(rotationB)
    getObjectsWithTag("RuleC")[1].setRotation(rotationC)
end

-- Places validation tokens in numbered positions with standard rotation
function placeValidationTokens(startNum, endNum)
    local bag = searchGlobalBag({"Destroy", "Scripted", "Validation"})[1]
    for i = startNum, endNum do
        generateWithStandardProps(bag, numberTokenPositions[i], {0.00, 180.00, 0.00}, false, true, false)
    end
end

function generateWireWithStandardProps(wire, position, rotation, shouldLock, smooth, flipped)
    local blueWireBag = searchGlobalBag({"Blue", "Scripted", "Wires"})[1]
    local yellowWireBag = searchGlobalBag({"Scripted", "Wires", "Yellow"})[1]
    local redWireBag = searchGlobalBag({"Red", "Scripted", "Wires"})[1]
    if contains(wire.tags, "Blue") then
        genWire = generateWithStandardProps(blueWireBag, position, rotation, false, false, false, wire.guid)
    elseif contains(wire.tags, "Yellow") then
        genWire = generateWithStandardProps(yellowWireBag, position, rotation, false, false, false, wire.guid)
    elseif contains(wire.tags, "Red") then
        genWire = generateWithStandardProps(redWireBag, position, rotation, false, false, false, wire.guid)
    end
    return genWire
end

-- Clones an object with standard properties (unlocked)
function generateWithStandardProps(bag, position, rotation, shouldLock, smooth, flipped, iorg)
    local g = false
    local i = false
    if shouldLock == nil then
        shouldLock = false -- Default to not locked
    end
    if smooth == nil then
        smooth = true -- Default to smooth movement
    end
    if flipped == nil then
        flipped = false -- Default to not flipped
    end
    if type(iorg) == "string" then
        g = true
    elseif type(iorg) == "number" then
        i = true
    end
    if g then
        obj = bag.takeObject({position=position, rotation={rotation[1], rotation[2], rotation[3] + (flipped and 180 or 0)}, smooth=smooth, guid=iorg})
    elseif i then
        obj = bag.takeObject({position=position, rotation={rotation[1], rotation[2], rotation[3] + (flipped and 180 or 0)}, smooth=smooth, index=iorg})
    else
        obj = bag.takeObject({position=position, rotation={rotation[1], rotation[2], rotation[3] + (flipped and 180 or 0)}, smooth=smooth})
    end
    obj.locked = shouldLock
    return obj
end

-- Randomly distributes info tokens to players from a virtual bag
function chooseRandomInfo(includeYellow)
    virtualBag = {"1", "1", "2", "2", "3", "3", "4", "4", "5", "5", "6", "6", "7", "7", "8", "8", "9", "9", "10", "10", "11", "11", "12", "12", "Yellow", "Yellow"}
    for _, color in ipairs(playerColors) do
        randomToken = math.random(1, #virtualBag - 2 + (includeYellow and 2 or 0))
        printToAll(color .. " will take the " .. virtualBag[randomToken] .. " token.")
        table.remove(virtualBag, randomToken)
    end    
end

-- Creates a standard button with common properties
function createStandardButton(clickFunction, label, position, width, fontSize, scale, rotation)
    self.createButton({
        click_function = clickFunction,
        function_owner = self,
        label          = label,
        scale          = scale or { 0.5, 0.5, 0.5 },
        position       = { position[1], 0.21, position[2] },
        rotation       = rotation or { 0, 180, 0 },
        width          = width or addWidth,
        height         = buttonHeight,
        font_size      = fontSize or 300
    })
end

-------------------------------------
--- CONFIGURATION DATA STRUCTURES ---
-------------------------------------

-- Character card configuration data structure
local characterCardConfigs = {
    ["Double Detector"] = {
        suffix = "DD",
        pack = 0,
        position = 1,
        bannedMissions = {},
        isDefault = true
    },
    ["Walkie-Talkies"] = {
        suffix = "WT",
        pack = 3,
        position = 2,
        bannedMissions = {35},
        minPlayers = 2
    },
    ["Triple Detector"] = {
        suffix = "TD",
        pack = 3,
        position = 3,
        bannedMissions = {}
    },
    ["General Radar"] = {
        suffix = "GR",
        pack = 3,
        position = 4,
        bannedMissions = {}
    },
    ["X or Y ray"] = {
        suffix = "XYR",
        pack = 3,
        position = 5,
        bannedMissions = {44, 45, 47, 49, 51, 54, 59, 63, 65}
    }
}

-- Equipment configuration data structure
local equipmentConfigs = {
    ["Label Not Equals"] = {
        description = "1",
        pack = 0,
        bannedMissions = {52}
    },
    ["Walkie-Talkies"] = {
        description = "2",
        pack = 0,
        bannedMissions = {3, 20, 35}
    },
    ["Triple Detector"] = {
        description = "3",
        pack = 0,
        bannedMissions = {}
    },
    ["Post-It"] = {
        description = "4",
        pack = 0,
        bannedMissions = {44, 45, 47, 49, 51, 54, 59, 63, 65}
    },
    ["Super Detector"] = {
        description = "5",
        pack = 0,
        bannedMissions = {}
    },
    ["Rewinder"] = {
        description = "6",
        pack = 0,
        bannedMissions = {53}
    },
    ["Emergency Batteries"] = {
        description = "7",
        pack = 0,
        bannedMissions = {27, 46, 58}
    },
    ["General Radar"] = {
        description = "8",
        pack = 0,
        bannedMissions = {}
    },
    ["Stabilizer"] = {
        description = "9",
        pack = 0,
        bannedMissions = {53}
    },
    ["X or Y ray"] = {
        description = "10",
        pack = 0,
        bannedMissions = {26, 44, 45, 47, 49, 51, 54, 59, 63, 65}
    },
    ["Coffee Mug"] = {
        description = "11",
        pack = 0,
        bannedMissions = {3, 10, 45}
    },
    ["Label Equals"] = {
        description = "12",
        pack = 0,
        bannedMissions = {3, 52}
    },
    ["False Bottom"] = {
        description = "0",
        pack = 1,
        bannedMissions = {}
    },
    ["Single Wire Label"] = {
        description = "0202",
        pack = 5,
        bannedMissions = {}
    },
    ["Emergency Drop"] = {
        description = "0303",
        pack = 5,
        bannedMissions = {}
    },
    ["Fast Pass Card"] = {
        description = "0909",
        pack = 5,
        bannedMissions = {}
    },
    ["Disintegrator"] = {
        description = "1010",
        pack = 5,
        bannedMissions = {57}
    },
    ["Grappling Hook"] = {
        description = "1111",
        pack = 5,
        bannedMissions = {}
    }
}

-- Position layout configuration
local layoutConfigs = {
    characterCards = {
        [2] = {
            cards = {{-44.61, 1.50, -3.44}, {-44.61, 1.50, 3.44}},
            buttons = {0.58, -0.58}
        },
        [3] = {
            cards = {{-44.61, 1.50, -6.88}, {-44.61, 1.50, 0.00}, {-44.61, 1.50, 6.88}},
            buttons = {1.15, 0.00, -1.15}
        },
        [4] = {
            cards = {{-44.61, 1.50, -10.32}, {-44.61, 1.50, -3.44}, {-44.61, 1.50, 3.44}, {-44.61, 1.50, 10.32}},
            buttons = {1.73, 0.58, -0.58, -1.73}
        },
        [5] = {
            cards = {{-44.61, 1.50, -13.76}, {-44.61, 1.50, -6.88}, {-44.61, 1.50, 0.00}, {-44.61, 1.50, 6.88}, {-44.61, 1.50, 13.76}},
            buttons = {2.30, 1.15, 0.00, -1.15, -2.30}
        }
    },
    equipmentCards = {
        standard = {
            {-14.58, 1.52, 5.49}, {-7.29, 1.52, 5.72}, {0.04, 1.52, 5.39}, 
            {7.35, 1.52, 5.62}, {14.66, 1.52, 5.45}
        },
        mission23 = {
            positions = {
                {-14.68, 1.52, 5.49}, {-14.68, 1.52, 5.49}, {-14.68, 1.52, 5.49},
                {-14.68, 1.52, 5.49}, {-14.68, 1.52, 5.49}, {-14.68, 1.52, 5.49}, {-14.68, 1.52, 5.49}
            },
            rotation = {0.00, 180.00, 180.00}
        }
    },
    numberCards = {
        grid3x4 = {
            {-44.08, 1.50, 8.31}, {-38.14, 1.50, 8.31}, {-32.19, 1.50, 8.31}, {-26.24, 1.50, 8.31},
            {-44.08, 1.50, 0.00}, {-38.14, 1.50, 0.00}, {-32.19, 1.50, 0.00}, {-26.24, 1.50, 0.00},
            {-44.08, 1.50, -8.32}, {-38.14, 1.50, -8.32}, {-32.19, 1.50, -8.32}, {-26.24, 1.50, -8.32}
        },
        vertical5 = {
            {-40.79, 1.50, -12.44}, {-40.79, 1.50, -6.22}, {-40.79, 1.50, 0.00}, 
            {-40.79, 1.50, 6.22}, {-40.79, 1.50, 12.44}
        },
        sequence3 = {
            {-35.47, 1.50, -6.22}, {-35.46, 1.50, 0.00}, {-35.47, 1.50, 6.22}
        },
        equipmentBased = {
            {-14.58, 1.57, 4.10}, {-7.29, 1.57, 4.35}, {0.04, 1.57, 4.11}, 
            {7.35, 1.57, 4.43}, {14.66, 1.57, 4.30}
        }
    },
    constraintCards = {
        mission31Layout = {
            {-42.32, 1.50, -11.87}, {-42.32, 1.50, -5.94}, {-42.32, 1.50, -0.01},
            {-42.32, 1.50, 5.92}, {-42.32, 1.50, 11.85}
        },
        mission66Layout = {
            {-43.80, 1.50, 0.00}, {-37.83, 1.50, 8.42}, {-31.86, 1.50, 0.00}, 
            {-37.83, 1.50, -8.41}, {-24.36, 1.50, 0.00}
        }
    },
    challengeCards = {
        standard = {
            {-46.65, 1.50, 0.00}, {-46.65, 1.50, -7.26}, {-46.65, 1.50, 7.26}, 
            {-46.65, 1.50, -14.53}, {-46.65, 1.50, 14.53}
        },
        mission60 = {
            {-46.65, 1.50, -14.53}, {-46.65, 1.50, -7.26}, {-46.65, 1.50, 0.00}, 
            {-46.65, 1.50, 7.26}, {-46.65, 1.50, 14.53}
        }
    }
}

-- Audio/Music configuration
local audioConfigs = {
    [19] = {
        url = "https://files.brawlbox.co.uk/Tabletop%20Simulator/Bomb%20Busters/BB-Final_Mission-19.mp3",
        title = "Mission 19",
        autoPlay = true
    },
    [30] = {
        url = "https://files.brawlbox.co.uk/Tabletop%20Simulator/Bomb%20Busters/BB-Final_Mission-30.mp3", 
        title = "Mission 30",
        autoPlay = true
    },
    [42] = {
        url = "https://files.brawlbox.co.uk/Tabletop%20Simulator/Bomb%20Busters/BB-Final_Mission-42.mp3",
        title = "Mission 42",
        autoPlay = true
    },
    [54] = {
        url = "https://files.brawlbox.co.uk/Tabletop%20Simulator/Bomb%20Busters/BB-Final_Mission-54.mp3",
        title = "Mission 54",
        autoPlay = true
    },
    [66] = {
        url = "https://files.brawlbox.co.uk/Tabletop%20Simulator/Bomb%20Busters/BB-Final_Mission-66.mp3",
        title = "Mission 66",
        autoPlay = true
    }
}

-- Special rules configuration
local specialRuleConfigs = {
    nanoWires = {
        missions = {43, -2},
        wireCounts = {
            -- Default wire counts (used if mission-specific not defined)
            default = {5, 5, 4, 4, 3}, -- [2p, 3p, 4p, 5p players]
            -- Mission-specific wire counts
            [43] = {5, 5, 4, 4, 3},     -- Mission 43: standard counts
            [-2] = {1, 2, 3, 4, 5}      -- Custom mission -2: playerNum wires
        }
    },
    outerWires = {
        missions = {38, 56, 64},
        rules = {
            [38] = {players = {1}, wirePosition = "last"},
            [56] = {players = "all", wirePosition = "last"}, 
            [64] = {players = "all", wirePosition = "lastTwo"}
        }
    },
    sortingOverrides = {
        [20] = "specialLastWire",
        [35] = "specialLastWire", 
        [38] = {player = 1, rule = "lastWireOnTop"},
        [56] = "allPlayersLastWireOuter",
        [64] = "lastTwoWiresOnTop",
        [-1] = "shuffleCaptain"
    },
    playerTeams = {
        [65] = {team = "Jokers", reason = "sharedVisibility"}
    },
    characterSpecial = {
        [27] = {captainFlipped = true, otherCardsDestroyed = true},
        [28] = {captainDestroyed = true},
        [34] = {captainSelection = "reshuffle", captainFlipped = true, constraintDistribution = "hands"},
        [-3] = {captainSelection = "reshuffle", captainFlipped = true}
    },
    equipmentSpecial = {
        -- Equipment special rules for missions requiring custom equipment handling
        -- Available configuration options:
        --   rotation: Custom rotation for equipment cards {x, y, z}
        --   count: Override number of equipment cards to deal
        --   layout: Use specific layout from layoutConfigs (e.g., "mission23")
        --   specificEquipment: Place specific equipment at custom positions (array format)
        --     {{name = "Equipment Name", position = {x,y,z}, rotation = {x,y,z}}, ...}
        --     Supports multiple instances of the same equipment
        --   earlyReturn: Return after placing specific equipment (skip normal distribution)
        --   noSorting: Disable sorting of equipment cards
        --   available: Raise equipment cards by 1.44 units (makes them appear "available")
        
        [15] = {
            rotation = {0.00, 180.00, 180.00}
        },
        [18] = {
            specificEquipment = {
                {
                    name = "General Radar",
                    position = {0.04, 1.52, 6.83},
                    rotation = {0.00, 180.00, 0.00}
                }
            },
            earlyReturn = true -- Only place specified equipment and return
        },
        [23] = {
            rotation = {0.00, 180.00, 180.00},
            count = 7,
            layout = "mission23" -- Uses layoutConfigs.equipmentCards.mission23
        },
        [-9] = {
            specificEquipment = {
                {
                    name = "Walkie-Talkies",
                    position = {0.04, 1.52, 6.83},
                    rotation = {0.00, 180.00, 0.00}
                }
            },
            earlyReturn = true -- Only place specified equipment and return
        }
    }
}

--------------------------------------
--- CONFIGURATION HELPER FUNCTIONS ---
--------------------------------------

-- Get special rule configuration for a mission
function getSpecialRuleConfig(missionNum, ruleType)
    local rules = specialRuleConfigs[ruleType]
    if not rules then return nil end
    
    if ruleType == "nanoWires" then
        if contains(rules.missions, missionNum) then
            return rules
        end
    elseif ruleType == "outerWires" then
        if contains(rules.missions, missionNum) then
            return rules.rules[missionNum]
        end
    elseif ruleType == "sortingOverrides" then
        return rules[missionNum]
    elseif ruleType == "playerTeams" then
        return rules[missionNum]
    elseif ruleType == "characterSpecial" then
        return rules[missionNum]
    elseif ruleType == "equipmentSpecial" then
        return rules[missionNum]
    end
    
    return nil
end

-- Check if mission has nano wires special rule
function hasNanoWires(missionNum)
    return getSpecialRuleConfig(missionNum, "nanoWires") ~= nil
end

-- Check if mission has outer wires special rule
function hasOuterWires(missionNum)
    return getSpecialRuleConfig(missionNum, "outerWires") ~= nil
end

-- Get sorting override rule for mission
function getSortingOverride(missionNum)
    return getSpecialRuleConfig(missionNum, "sortingOverrides")
end

-- Get character special rules for mission
function getCharacterSpecial(missionNum)
    return getSpecialRuleConfig(missionNum, "characterSpecial")
end

-- Get equipment special rules for mission
function getEquipmentSpecial(missionNum)
    return getSpecialRuleConfig(missionNum, "equipmentSpecial")
end

-- Helper function to determine if a mission should use altCount = {2} by default
function shouldUseDefaultAltCount(missionNum, config)
    -- Only apply default altCount to regular missions 4-66 that have wiresAlt but no explicit altCount
    if missionNum >= 4 and missionNum <= 66 and config and config.wiresAlt and not config.altCount then
        return true
    end
    return false
end

-- Get position layout for a specific type and count
function getPositionLayout(layoutType, count, missionNum)
    local layouts = layoutConfigs[layoutType]
    if not layouts then
        printToAll("Error: No layout configuration found for " .. layoutType, {r=1,g=0,b=0})
        return nil
    end
    
    -- Handle mission-specific layouts
    if layoutType == "challengeCards" and missionNum == 60 then
        return layouts.mission60
    elseif layoutType == "equipmentCards" and missionNum == 23 then
        return layouts.mission23
    elseif layoutType == "constraintCards" and missionNum == 31 then
        return layouts.mission31Layout
    elseif layoutType == "constraintCards" and missionNum == 66 then
        return layouts.mission66Layout
    end
    
    -- Handle count-based layouts
    if layouts[count] then
        return layouts[count]
    elseif layouts.standard then
        return layouts.standard
    end
    
    return nil
end

-- Handle audio configuration for missions
function handleAudioConfiguration(missionNum)
    local config = audioConfigs[missionNum]
    if not config then return end
    
    MusicPlayer.setCurrentAudioclip({
        url = config.url,
        title = config.title
    })
    
    if config.autoPlay then
        MusicPlayer.play()
        printToAll("Use the built-in music player to control the audio - select 'Music' on the toolbar at the top.")
    end
end

-- Helper function to determine if a pack is available for a mission (unified logic for regular and custom missions)
function isPackAvailable(missionNum, missionConfig, packNum, yellowNum)
    -- Custom missions use explicit pack configuration
    if missionConfig and (missionConfig.includePack1Equipment ~= nil or missionConfig.includePack5Equipment ~= nil) then
        if packNum == 1 then
            return missionConfig.includePack1Equipment == true
        elseif packNum == 5 then
            return missionConfig.includePack5Equipment == true
        end
        return false
    end
    
    -- Regular missions use mission number ranges and conditions
    if missionNum > 0 then
        if packNum == 1 then
            return missionNum >= 9 and yellowNum > 0 -- Pack 1 available from mission 9+ with yellows
        elseif packNum == 5 then
            return missionNum >= 55 -- Pack 5 available from mission 55+
        end
    end
    
    return false
end

-- Check if equipment should be excluded based on configuration
function shouldExcludeEquipmentByConfig(equipmentName, desc, missionNum, yellowNum)
    -- Check if this is a custom mission with pack-based equipment requirements
    local missionConfig = getMissionConfig(missionNum)
    if missionConfig and (missionConfig.includePack1Equipment ~= nil or missionConfig.includePack5Equipment ~= nil) then
        -- Custom mission with pack-based equipment configuration
        
        -- Determine equipment pack
        local isPack1 = false  -- Pack 1 contains "False Bottom" 
        local isPack5 = false  -- Pack 5 contains 4-digit equipment
        local isPack0 = false  -- Pack 0 contains first 12 default equipment (descriptions 1-12)
        
        -- Check if it's Pack 1 equipment (False Bottom)
        if equipmentName == "False Bottom" then
            isPack1 = true
        end
        
        -- Check if it's Pack 5 equipment (4-digit descriptions)
        if desc and string.len(desc) == 4 and string.match(desc, "^%d%d%d%d$") then
            isPack5 = true
        end
        
        -- Look up in equipment configs to verify pack classification
        local config = nil
        for name, equipConfig in pairs(equipmentConfigs) do
            if equipConfig.description == desc or name == equipmentName then
                config = equipConfig
                break
            end
        end
        
        if config and config.pack ~= nil then
            if config.pack == 0 then
                isPack0 = true
            elseif config.pack == 1 then
                isPack1 = true
            elseif config.pack == 5 then
                isPack5 = true
            end
        else
            -- Default assumption: if no pack specified and not 4-digit, it's Pack 0
            if not isPack5 and not isPack1 then
                isPack0 = true
            end
        end
        
        -- Apply inclusion rules
        local shouldInclude = false
        
        -- includePack1Equipment controls both Pack 0 (first 12) and Pack 1 (False Bottom)
        if (isPack0 or isPack1) and missionConfig.includePack1Equipment then
            shouldInclude = true
        end
        
        -- Include Pack 5 equipment if enabled
        if isPack5 and missionConfig.includePack5Equipment then
            shouldInclude = true
        end
        
        -- Special case: Always exclude False Bottom when yellowNum == 0, regardless of pack settings
        if equipmentName == "False Bottom" and yellowNum == 0 and missionConfig.yellowWires == nil then
            return true -- Exclude False Bottom when no yellow wires
        end
        
        if not shouldInclude then
            return true -- Exclude this equipment
        end
    end
    
    -- Look up equipment by description first (legacy compatibility)
    local config = nil
    for name, equipConfig in pairs(equipmentConfigs) do
        if equipConfig.description == desc then
            config = equipConfig
            break
        end
    end
    
    -- If not found by description, try by name
    if not config then
        config = equipmentConfigs[equipmentName]
    end
    
    if config then
        -- Check mission-specific bans
        if config.bannedMissions then
            for _, bannedMission in ipairs(config.bannedMissions) do
                if missionNum == bannedMission then
                    return true
                end
            end
        end
        
        -- Check pack requirements using unified logic (works for both regular and custom missions)
        if config.pack and config.pack > 0 then
            local isPack1Available = isPackAvailable(missionNum, missionConfig, 1, yellowNum)
            local isPack5Available = isPackAvailable(missionNum, missionConfig, 5, yellowNum)
            
            if (config.pack == 1 and not isPack1Available) or
               (config.pack == 5 and not isPack5Available) then
                return true
            end
        end
    end
    
    -- Check for mission-specific equipment exclusion rules
    if not missionConfig then
        missionConfig = getMissionConfig(missionNum)
    end
    
    if missionConfig and missionConfig.equipmentExclusion then
        local exclusionRule = missionConfig.equipmentExclusion
        
        if exclusionRule.type == "matchNumberCard" then
            -- Exclude equipment that matches destroyed number cards
            local destroyNumbers = getObjectsWithAllTags({"Numbers", "Destroy"})
            if #destroyNumbers > 0 and desc == destroyNumbers[1].getName() then
                return true
            end
        end
    end
    
    return false
end

-- Generate character card wrapper functions dynamically using configuration
for cardName, config in pairs(characterCardConfigs) do
    _G["addToCharList" .. config.suffix] = function() addToCharList(cardName) end
    _G["removeFromCharList" .. config.suffix] = function() removeFromCharList(cardName) end
end

-- Determines which character cards are available for a given mission
function getAvailableCharacterCards(missionNum)
    local available = {}
    
    -- Check if this is a custom mission with specific character cards
    local config = getMissionConfig(missionNum)
    if config and config.characterCards and #config.characterCards > 0 then
        -- Custom mission with specific character cards - include Double Detector + specified cards
        
        -- Always include Double Detector first
        for configName, cardConfig in pairs(characterCardConfigs) do
            if (configName:lower() == "double detector") then
                table.insert(available, {
                    name = cardConfig.name or configName,
                    suffix = cardConfig.suffix,
                    pack = cardConfig.pack,
                    position = cardConfig.position,
                    specialRules = cardConfig.specialRules or {}
                })
                break
            end
        end
        
        -- Add the specified character cards
        for _, cardName in ipairs(config.characterCards) do
            -- Skip if it's already Double Detector to avoid duplicates
            if cardName:lower() ~= "double detector" and cardName:lower() ~= "doubledetector" then
                -- Find the card configuration
                for configName, cardConfig in pairs(characterCardConfigs) do
                    if configName:lower() == cardName:lower() or (cardConfig.name and cardConfig.name:lower() == cardName:lower()) then
                        table.insert(available, {
                            name = cardConfig.name or configName,
                            suffix = cardConfig.suffix,
                            pack = cardConfig.pack,
                            position = cardConfig.position,
                            specialRules = cardConfig.specialRules or {}
                        })
                        break
                    end
                end
            end
        end
    else
        -- Regular mission or custom mission without specific cards - use all available
        for cardName, cardConfig in pairs(characterCardConfigs) do
            local isBanned = false
            if cardConfig.bannedMissions then
                for _, bannedMission in ipairs(cardConfig.bannedMissions) do
                    if missionNum == bannedMission then
                        isBanned = true
                        break
                    end
                end
            end
            if not isBanned then
                table.insert(available, {
                    name = cardConfig.name or cardName,
                    suffix = cardConfig.suffix,
                    pack = cardConfig.pack,
                    position = cardConfig.position,
                    specialRules = cardConfig.specialRules or {}
                })
            end
        end
    end
    
    -- Sort by position for consistent ordering
    table.sort(available, function(a, b) return a.position < b.position end)
    return available
end

-- Sets up character card display and buttons based on available cards
function setupCharacterCardSelection(missionNum, availableCards)
    local numCards = #availableCards
    local layout = layoutConfigs.characterCards[numCards]
    
    if not layout then
        printToAll("Error: No layout defined for " .. numCards .. " character cards.", {r=1,g=0,b=0})
        return
    end
    
    local cardPositions = layout.cards
    local buttonPositions = layout.buttons

    characterCardBag0 = searchGlobalBag({"Character", "Pack0"})[1]
    characterCardBag3 = searchGlobalBag({"Character", "Pack3"})[1]
    
    -- Clone and position character cards
    for i, card in ipairs(availableCards) do
        local sourceCards
        if card.pack == 0 then
            generateWithStandardProps(characterCardBag0, cardPositions[i], {0.00, 90.00, 0.00}, true, false, false)
        else
            for _, characterCard in ipairs(characterCardBag3.getObjects()) do
                if characterCard.name == card.name then
                    generateWithStandardProps(characterCardBag3, cardPositions[i], {0.00, 90.00, 0.00}, true, false, false, characterCard.index)
                    break
                end
            end
        end
        
        -- Create Add and Remove buttons for this card
        createStandardButton("addToCharList" .. card.suffix, "Add", {buttonPositions[i], addZPosition}, addWidth, fontSize)
        createStandardButton("removeFromCharList" .. card.suffix, "Remove", {buttonPositions[i], removeZPosition}, removeWidth, fontSize)
    end
end

-----------------------
--- MISSION CONFIGS ---
-----------------------

-- Mission configuration data structure containing all mission-specific parameters
missionConfigs = {
    [1] = {
        name = "TRAINING, Day 1",
        wires = {6, 0, 0, 0, 0, 0, 0},
        validationTokens = {7, 12}
    },
    [2] = {
        name = "TRAINING, Day 2",
        wires = {8, 2, 2, 8, 0, 0, 8},
        validationTokens = {9, 12}
    },
    [3] = {
        name = "TRAINING, Day 3",
        wires = {10, 0, 0, 10, 1, 1, 10},
        validationTokens = {11, 12}
    },
    [4] = {
        name = "TRAINING: First Day in the Field",
        wires = {12, 2, 2, 12, 1, 1, 12},
        wiresAlt = {12, 4, 4, 12, 1, 1, 12}
    },
    [5] = {
        name = "TRAINING: Second Day in the Field",
        wires = {12, 2, 3, 12, 1, 1, 12},
        wiresAlt = {12, 2, 3, 12, 2, 2, 12}
    },
    [6] = {
        name = "TRAINING: Third Day in the Field",
        wires = {12, 4, 4, 12, 1, 1, 12},
        wiresAlt = {12, 4, 4, 12, 2, 2, 12}
    },
    [7] = {
        name = "TRAINING: Last Day of Class",
        wires = {12, 0, 0, 12, 1, 2, 12},
        wiresAlt = {12, 0, 0, 12, 1, 3, 12}
    },
    [8] = {
        name = "FINAL EXAM",
        wires = {12, 2, 3, 12, 1, 2, 12},
        wiresAlt = {12, 4, 4, 12, 1, 3, 12}
    },
    [9] = {
        name = "A Sense of Priorities",
        wires = {12, 2, 2, 12, 1, 1, 12},
        wiresAlt = {12, 4, 4, 12, 2, 2, 12},
        sequence = 0
    },
    [10] = {
        name = "A Rough Patch",
        wires = {12, 4, 4, 12, 1, 1, 12},
        timer = {
            position = {-36.69, -0.28, 0.00},
            rotation = {90.00, 270.00, 0.00},
            scale = {2.55, 2.55, 2.55},
            value2Player = 720,
            value3Plus = 900
        }
    },
    [11] = {
        name = "Blue on Red, Looks Like We Are Dead",
        wires = {12, 2, 2, 12, 0, 0, 12},
        wiresAlt = {12, 4, 4, 12, 0, 0, 12},
        numberCard = {
            position = {-16.79, 1.53, -14.36},
            rotation = {0.45, 180.00, 0.00}
        },
        equipmentExclusion = {
            type = "matchNumberCard" -- exclude equipment matching destroyed number cards
        }
    },
    [12] = {
        name = "Wrapped in Red Tape",
        wires = {12, 4, 4, 12, 1, 1, 12},
        wiresAlt = {12, 4, 4, 12, 2, 2, 12},
        equipmentNumberCards = true
    },
    [13] = {
        name = "Red Alert!",
        wires = {12, 0, 0, 12, 0, 0, 12},
        redWires = 3,
        randomInfo = true
    },
    [14] = {
        name = "High-Risk Bomb Disposal Expert (aka. NOOB)",
        wires = {12, 2, 3, 12, 2, 2, 12},
        wiresAlt = {12, 4, 4, 12, 3, 3, 12}
    },
    [15] = {
        name = "Mission in Новосибирск (Don't worry, we can't pronounce it either...)",
        wires = {12, 0, 0, 12, 1, 3, 12},
        wiresAlt = {12, 0, 0, 12, 2, 3, 12},
        numberCardSpecial = "faceUpAndShuffle"
    },
    [16] = {
        name = "Time to Reprioritize (Is this déjà vu?)",
        wires = {12, 2, 3, 12, 1, 1, 12},
        wiresAlt = {12, 4, 4, 12, 2, 2, 12},
        sequence = 1
    },
    [17] = {
        name = "Rhett Herrings",
        wires = {12, 0, 0, 12, 2, 3, 12},
        wiresAlt = {12, 0, 0, 12, 3, 3, 12}
    },
    [18] = {
        name = "BAT-Helping-Hand",
        wires = {12, 0, 0, 12, 2, 2, 12},
        wiresAlt = {12, 0, 0, 12, 3, 3, 12},
        shuffleNumbers = true
    },
    [19] = {
        name = "In the Belly of the Beast",
        wires = {12, 2, 3, 12, 1, 1, 12},
        music = {
            url = "https://files.brawlbox.co.uk/Tabletop%20Simulator/Bomb%20Busters/BB-Final_Mission-19.mp3",
            title = "Mission 19"
        }
    },
    [20] = {
        name = "The Big Bad Wolf",
        wires = {12, 2, 2, 12, 2, 2, 12},
        wiresAlt = {12, 4, 4, 12, 2, 3, 12}
    },
    [21] = {
        name = "Death by Haggis",
        wires = {12, 0, 0, 12, 1, 2, 12},
        wiresAlt = {12, 0, 0, 12, 2, 2, 12},
        excludeInfoTokens = true,
        specialTokens = {
            type = "oddEven",
            tokens = {
                {name = "OddTokens", position = {-9.18, 1.49, -6.38}},
                {name = "EvenTokens", position = {-4.59, 1.49, -6.38}}
            },
            count = 0 -- 0 means a bag is placed instead of tokens
        }
    },
    [22] = {
        name = "Negative Impressions",
        wires = {12, 4, 4, 12, 1, 1, 12}
    },
    [23] = {
        name = "Defusing in Fordwich (381 inhabitants, 64 miles from London)",
        wires = {12, 0, 0, 12, 1, 3, 12},
        wiresAlt = {12, 0, 0, 12, 2, 3, 12},
        numberCardWithWarning = {
            position = {-24.18, 1.58, 0.00},
            rotation = {0.00, 180.00, 0.00}
        }
    },
    [24] = {
        name = "Tally Ho!",
        wires = {12, 0, 0, 12, 2, 2, 12},
        wiresAlt = {12, 0, 0, 12, 3, 3, 12},
        excludeInfoTokens = true,
        specialTokens = {
            type = "multiplier",
            tokens = {
                {name = "x1Tokens", position = {-9.58, 1.49, -7.65}},
                {name = "x2Tokens", position = {-6.88, 1.49, -5.20}},
                {name = "x3Tokens", position = {-4.19, 1.49, -7.65}}
            },
            count = 0 -- 0 means a bag is placed instead of tokens
        }
    },
    [25] = {
        name = "The Better to Hear You with...",
        wires = {12, 0, 0, 12, 2, 2, 12},
        wiresAlt = {12, 0, 0, 12, 3, 3, 12}
    },
    [26] = {
        name = "Speaking of the Wolf...",
        wires = {12, 0, 0, 12, 2, 2, 12},
        gridNumbers = true
    },
    [27] = {
        name = "Playing with Wire",
        wires = {12, 4, 4, 12, 1, 1, 12}
    },
    [28] = {
        name = "Captain Careless",
        wires = {12, 4, 4, 12, 2, 2, 12},
        wiresAlt = {12, 4, 4, 12, 3, 3, 12}
    },
    [29] = {
        name = "Guessing Game",
        wires = {12, 0, 0, 12, 3, 3, 12},
        customDistribution = "mission29"
    },
    [30] = {
        name = "Speed Mission!",
        wires = {12, 4, 4, 12, 1, 2, 12},
        shuffleNumbers = true,
        music = {
            url = "https://files.brawlbox.co.uk/Tabletop%20Simulator/Bomb%20Busters/BB-Final_Mission-30.mp3",
            title = "Mission 30"
        }
    },
    [31] = {
        name = "With One Hand Tied Behind My Back...",
        wires = {12, 0, 0, 12, 2, 3, 12},
        constraintCards = "special31"
    },
    [32] = {
        name = "Pranks-A-Plenty",
        wires = {12, 0, 0, 12, 2, 2, 12},
        wiresAlt = {12, 0, 0, 12, 3, 3, 12},
        constraintCardSpecial = "faceUpAndShuffle"
    },
    [33] = {
        name = "What Happens in Vegas...",
        wires = {12, 0, 0, 12, 2, 3, 12},
        wiresAlt = {12, 0, 0, 12, 3, 3, 12},
        excludeInfoTokens = true,
        specialTokens = {
            type = "oddEven",
            tokens = {
                {name = "OddTokens", position = {-9.18, 1.49, -6.38}},
                {name = "EvenTokens", position = {-4.59, 1.49, -6.38}}
            },
            count = 0 -- 0 means a bag is placed instead of tokens
        }
    },
    [34] = {
        name = "The Weakest Link",
        wires = {12, 0, 0, 12, 1, 1, 12},
        minPlayers = 3,
        constraintCards = "handDistribution"
    },
    [35] = {
        name = "No Link, Single Wire",
        wires = {12, 4, 4, 12, 2, 3, 12},
        wiresAlt = {12, 4, 4, 12, 3, 3, 12}
    },
    [36] = {
        name = "Panic under the Palm Trees",
        wires = {12, 2, 2, 12, 1, 3, 12},
        wiresAlt = {12, 4, 4, 12, 2, 3, 12},
        numberCards5 = true,
        sequenceCard = true
    },
    [37] = {
        name = "Joker's Gone Wild",
        wires = {12, 0, 0, 12, 2, 2, 12},
        wiresAlt = {12, 0, 0, 12, 3, 3, 12},
        constraintCardSpecial = "faceUpAndShuffle"
    },
    [38] = {
        name = "Knit a Wire, Purl a Wire",
        wires = {12, 0, 0, 12, 2, 2, 12},
        wiresAlt = {12, 0, 0, 12, 3, 3, 12}
    },
    [39] = {
        name = "The 4 Noble Wires",
        wires = {12, 4, 4, 12, 2, 3, 12},
        wiresAlt = {12, 4, 4, 12, 3, 3, 12},
        shuffleNumbers = true,
        randomInfo = true
    },
    [40] = {
        name = "Hard to Die (A Christmas Tale)",
        wires = {12, 0, 0, 12, 3, 3, 12},
        excludeInfoTokens = true,
        specialTokens = {
            type = "multiplier",
            tokens = {
                {name = "x1Tokens", position = {-9.58, 1.49, -7.65}},
                {name = "x2Tokens", position = {-6.88, 1.49, -5.20}},
                {name = "x3Tokens", position = {-4.19, 1.49, -7.65}}
            },
            count = 0 -- 0 means a bag is placed instead of tokens
        }
    },
    [41] = {
        name = "Latin Bombshell",
        wires = {12, 0, 0, 12, 1, 3, 12},
        wiresAlt = {12, 0, 0, 12, 2, 3, 12},
        randomInfo = true,
        yellowWires = {
            type = "playerBased",
            count = "playerNum", -- playerNum wires, but 4 if playerNum is 5
            startIndex = 1, -- Start from player 1, but player 2 if playerNum is 5
            skipDoubleHands = false
        }
    },
    [42] = {
        name = "Time to Run Away and Join The Circus",
        wires = {12, 4, 4, 12, 1, 3, 12},
        music = {
            url = "https://files.brawlbox.co.uk/Tabletop%20Simulator/Bomb%20Busters/BB-Final_Mission-42.mp3",
            title = "Mission 42"
        }
    },
    [43] = {
        name = "Nano the Robot",
        wires = {12, 0, 0, 12, 3, 3, 12},
        nano = {numberTokenPositions[1], 1}
    },
    [44] = {
        name = "Underwater Pressure",
        wires = {12, 0, 0, 12, 1, 3, 12},
        oxygenTokens = "perPlayer2"
    },
    [45] = {
        name = "Seeking Volunteers",
        wires = {12, 0, 0, 12, 2, 2, 12},
        wiresAlt = {12, 0, 0, 12, 3, 3, 12},
        shuffleNumbers = true
    },
    [46] = {
        name = "Secret Agent",
        wires = {12, 4, 4, 12, 0, 0, 12},
        warningToken = 7
    },
    [47] = {
        name = "Calculate the Odds",
        wires = {12, 0, 0, 12, 2, 3, 12},
        wiresAlt = {12, 0, 0, 12, 3, 3, 12},
        gridNumbers = true
    },
    [48] = {
        name = "Lethal Wires 3",
        wires = {12, 0, 0, 12, 2, 2, 12},
        wiresAlt = {12, 0, 0, 12, 3, 3, 12},
        yellowWires = {
            type = "sequential",
            count = 3,
            startIndex = 1,
            skipDoubleHands = true -- Skip double hand players in 3-player games
        }
    },
    [49] = {
        name = "Message in a Bottle",
        wires = {12, 0, 0, 12, 2, 2, 12},
        wiresAlt = {12, 0, 0, 12, 3, 3, 12},
        oxygenTokens = "playerBased"
    },
    [50] = {
        name = "The Blackest Sea",
        wires = {12, 2, 2, 12, 2, 2, 12},
        wiresAlt = {12, 4, 4, 12, 3, 3, 12},
        specialMessage = "Please delete the markers on the board before placing Info tokens.",
        excludeTokenBags = true
    },
    [51] = {
        name = "It's Your (Un)Lucky Day!",
        wires = {12, 0, 0, 12, 1, 1, 12},
        wiresAlt = {12, 0, 0, 12, 2, 2, 12},
        shuffleNumbers = true
    },
    [52] = {
        name = "Dirty Double-crossers",
        wires = {12, 0, 0, 12, 3, 3, 12},
        wiresAlt = {12, 4, 4, 12, 3, 3, 12},
        excludeTokens = {"Equals", "NotEquals"}
    },
    [53] = {
        name = "Nano Nano",
        wires = {12, 0, 0, 12, 2, 2, 12},
        wiresAlt = {12, 0, 0, 12, 3, 3, 12},
        nano = {{-20.22, 2.02, -1.16}, 1}
    },
    [54] = {
        name = "The Attack of Rabbit the Red",
        wires = {12, 0, 0, 12, 0, 0, 12},
        redWires = "all",
        oxygenTokens = "playerBasedSpecial",
        music = {
            url = "https://files.brawlbox.co.uk/Tabletop%20Simulator/Bomb%20Busters/BB-Final_Mission-54.mp3",
            title = "Mission 54"
        }
    },
    [55] = {
        name = "Doctor Nope's Challenge",
        wires = {12, 0, 0, 12, 2, 2, 12},
        wiresAlt = {12, 0, 0, 12, 2, 3, 12},
        challengeCards = true
    },
    [56] = {
        name = "Tripwires",
        wires = {12, 0, 0, 12, 2, 3, 12},
        wiresAlt = {12, 0, 0, 12, 3, 3, 12}
    },
    [57] = {
        name = "An Impossible Mission", 
        wires = {12, 0, 0, 12, 1, 1, 12},
        wiresAlt = {12, 0, 0, 12, 2, 2, 12},
        gridNumbers = true,
        gridConstraints = true
    },
    [58] = {
        name = "Double and/or Nothing",
        wires = {12, 0, 0, 12, 2, 2, 12},
        wiresAlt = {12, 0, 0, 12, 3, 3, 12},
        excludeInfoTokens = true
    },
    [59] = {
        name = "Nano to the Rescue",
        wires = {12, 0, 0, 12, 2, 3, 12},
        wiresAlt = {12, 0, 0, 12, 3, 3, 12},
        gridNumbers = true,
        nanoOnSeven = true
    },
    [60] = {
        name = "Yes, it's Doctor Nope!",
        wires = {12, 0, 0, 12, 2, 3, 12},
        wiresAlt = {12, 0, 0, 12, 3, 3, 12},
        challengeCards = true
    },
    [61] = {
        name = "Sharing is Caring",
        wires = {12, 0, 0, 12, 1, 1, 12},
        wiresAlt = {12, 0, 0, 12, 2, 2, 12},
        constraintCards = "complexDistribution"
    },
    [62] = {
        name = "Armageddon Roulette",
        wires = {12, 0, 0, 12, 2, 2, 12},
        wiresAlt = {12, 0, 0, 12, 3, 3, 12},
        numberCards5 = true
    },
    [63] = {
        name = "It is Positively Titanic",
        wires = {12, 0, 0, 12, 2, 2, 12},
        wiresAlt = {12, 0, 0, 12, 3, 3, 12},
        oxygenTokens = "scalingToLeader"
    },
    [64] = {
        name = "Return of the Tripwires",
        wires = {12, 0, 0, 12, 1, 1, 12},
        wiresAlt = {12, 0, 0, 12, 2, 2, 12}
    },
    [65] = {
        name = "Hand-Me-Downs",
        wires = {12, 0, 0, 12, 3, 3, 12},
        minPlayers = 3,
        customDistribution = "mission65",
        teamAssignment = "Jokers"
    },
    [66] = {
        name = "The Final Countdown",
        wires = {12, 2, 2, 12, 2, 2, 12},
        bunkerCard = true,
        standee = true,
        constraintCards5 = true,
        music = {
            url = "https://files.brawlbox.co.uk/Tabletop%20Simulator/Bomb%20Busters/BB-Final_Mission-66.mp3",
            title = "Mission 66"
        }
    }
}

-- Custom missions configuration table (negative numbers starting from -1)
customMissionConfigs = {
    -- Mission 0 reserved for testing
    [-1] = {
        name = "Captain Clumsy",
        wires = {12, 2, 3, 12, 1, 2, 12},
        includePack1Equipment = true,
        includePack5Equipment = false
    },
    [-2] = {
        name = "Nano Yellow",
        wires = {12, 0, 0, 12, 0, 0, 12},
        includePack1Equipment = true,
        includePack5Equipment = false,
        characterCards = {"Walkie-Talkies", "Triple Detector", "General Radar", "X or Y ray"},
        nano = {"mission-2", 0}, -- Use string identifier "mission-2" to be resolved at runtime
        yellowWires = {
            type = "perPlayer",
            count = 2, -- 2 yellow wires per player
            startIndex = 1,
            skipDoubleHands = false
        }
    },
    [-3] = {
        name = "Double Agent",
        wires = {12, 0, 0, 12, 1, 1, 12},
        includePack1Equipment = true,
        includePack5Equipment = false,
        characterCards = {"Walkie-Talkies", "Triple Detector", "General Radar", "X or Y ray"}
    },
    [-4] = {
        name = "Challenge, 3, 2, 1",
        wires = {12, 0, 0, 12, 1, 1, 12},
        includePack1Equipment = true,
        includePack5Equipment = false,
        characterCards = {"Walkie-Talkies", "Triple Detector", "General Radar", "X or Y ray"},
        numberCard = {
            position = "mission-4" -- Use string identifier to be resolved at runtime
        },
        specialTokens = {
            type = "comparison",
            tokens = {
                {name = "LessTokens", position = {-7.61, 1.61, -10.10}},
                {name = "GreaterTokens", position = {-6.09, 1.61, -10.10}}
            },
            count = 1 -- 0 means a bag is placed instead of tokens
        }
    },
    [-5] = {
        name = "Whack-a-wire",
        wires = {12, 2, 2, 12, 1, 2, 12},
        includePack1Equipment = false,
        includePack5Equipment = false,
        characterCards = {"Walkie-Talkies", "Triple Detector", "General Radar", "X or Y ray"},
    },
    [-6] = {
        name = "The Hydra",
        wires = {12, 2, 2, 12, 2, 2, 12},
        includePack1Equipment = true,
        includePack5Equipment = false,
        wireHandCount = 8
    },
    [-7] = {
        name = "Locked Away",
        wires = {12, 4, 4, 12, 1, 2, 12},
        includePack1Equipment = false,
        includePack5Equipment = true,
        equipmentNumberCards = true
    },
    [-8] = {
        name = "Captain Says",
        wires = {12, 0, 0, 12, 2, 2, 12},
        includePack1Equipment = true,
        includePack5Equipment = false,
        characterCards = {"Walkie-Talkies", "Triple Detector", "General Radar", "X or Y ray"},
        constraintCards = "special-8"
    },
    [-9] = {
        name = "C.C.C. (Communication, concentration, co-operation)",
        wires = {12, 2, 2, 12, 1, 1, 12},
        includePack1Equipment = true,
        includePack5Equipment = false,
        characterCards = {"Triple Detector", "General Radar"}
    },
    [-10] = {
        name = "Fuzzy Signal",
        wires = {12, 2, 3, 12, 1, 3, 12},
        includePack1Equipment = true,
        includePack5Equipment = false,
        characterCards = {"Walkie-Talkies", "Triple Detector", "General Radar", "X or Y ray"},
        excludeInfoTokens = true,
        specialTokens = {
            type = "range",
            tokens = {
                {name = "R1Tokens", position = {-7.61, 1.81, -5.20}},
                {name = "R2Tokens", position = {-6.09, 1.81, -5.20}},
                {name = "R3Tokens", position = {-7.61, 1.81, -7.65}},
                {name = "R4Tokens", position = {-6.09, 1.81, -7.65}}
            },
            count = 2 -- 2 for each token types
        }
    }
}

------------------------
--- HELPER FUNCTIONS ---
------------------------

-- Gets mission configuration from either regular or custom missions
function getMissionConfig(missionNum)
    if missionNum < 1 then
        return customMissionConfigs[missionNum]
    else
        return missionConfigs[missionNum]
    end
end

-- Validates that a custom mission configuration is valid
function validateCustomMissionConfig(config)
    if not config then
        return false
    end
    
    -- Validate required fields
    if not config.wires or #config.wires ~= 7 then
        return false
    end
    
    return true
end

-- Helper function to determine if character selection is available (unified logic)
function hasCharacterSelection(missionNum, config)
    -- Custom missions use explicit character card configuration
    if config and config.characterCards and #config.characterCards > 0 then
        return true
    end
    
    -- Regular missions from 31 onwards have character selection
    return missionNum > 30
end

-- Dynamically sets rule card rotations based on mission features
function setDynamicRuleCardRotations(missionNum, config)
    -- Default rotation (face down/tutorial)
    local faceDown = {0.00, 270.00, 180.00}
    local faceUp = {0.00, 270.00, 0.00}
    
    -- Rule Card A: Show if mission has yellow wires (mission > 8 or custom mission with yellows)
    local cardARotation = faceDown
    if missionNum > 8 then
        cardARotation = faceUp
    elseif config and config.wires and (config.wires[2] > 0 or config.yellowWires) and config.includePack1Equipment then -- yellowNum > 0
        cardARotation = faceUp
    end
    
    -- Rule Card B: Show if mission has character selection
    local cardBRotation = faceDown
    if hasCharacterSelection(missionNum, config) then
        cardBRotation = faceUp
    end
    
    -- Rule Card C: Show if mission has Pack 5 equipment
    local cardCRotation = faceDown
    if isPackAvailable(missionNum, config, 5, 0) then -- yellowNum not relevant for Pack 5
        cardCRotation = faceUp
    end
    
    setRuleCardRotations(cardARotation, cardBRotation, cardCRotation)
end

bagPosition = {0, 50, 0}

function searchGlobalBag(tags, keep)
    allBagsBags = getObjectsWithTag("All")
    for _, bag in ipairs(allBagsBags) do
        bag.destruct()
    end
    globalBag = getObjectsWithTag("AllInfinite")[1]
    allBagsBag = globalBag.takeObject({position = bagPosition, smooth = false})
    allBagsBag.locked = true
    local returnObjects = {}
    for _, object in ipairs(allBagsBag.getObjects()) do
        if table.concat(object.tags) == table.concat(tags) then
            obj = allBagsBag.takeObject({position = bagPosition, smooth = false, guid = object.guid})
            obj.locked = true
            table.insert(returnObjects, obj)
        end
    end
    if not keep then
        Wait.frames(function()
            for _, obj in ipairs(returnObjects) do
                obj.destruct()
            end
        end, 20)
    end
    return returnObjects
end

-----------------------
--- SETUP FUNCTIONS ---
-----------------------

-- Main mission setup function that initializes all game components
function startMission()
    MusicPlayer.pause()
    characterCardSelection = {}

    players = Player.getPlayers()
    allPlayerColors = {
        "Blue",
        "Green",
        "White",
        "Red",
        "Purple"
    }
    playerNum = 0
    playerColors = {}
    if DEBUG then
        for i = 1, DEBUG_PLAYER_COUNT do
            table.insert(playerColors, DEBUG_PLAYER_COLORS[i])
            playerNum = playerNum + 1
        end
    else
        -- Count players and assign colors based on seating
        for num, color in ipairs(allPlayerColors) do
            for _, player in ipairs(players) do
                if player.color == color and player.seated then
                    playerNum = playerNum + 1
                    table.insert(playerColors, color)
                    break
                end
            end
        end
    end
    if playerNum < 2 then
        printToAll("Error: Not enough players", {r=1,g=0,b=0})
        return
    end
    for _, object in ipairs(getObjectsWithTag("Destroy")) do
        object.destruct()
    end
    buttons = self.getButtons()
    for i = 3, #buttons - 1 do
        self.removeButton(i)
    end

    missionNum = self.getValue()

    -- Early validation: Check if mission configuration exists before any setup
    local config = getMissionConfig(missionNum)
    if not config then
        if missionNum < 1 then
            printToAll("Error: No configuration found for custom mission " .. missionNum .. ". Please check your custom mission configuration.", {r=1, g=0, b=0})
        else
            printToAll("Error: No configuration found for mission " .. missionNum .. ". Please choose a valid mission number.", {r=1, g=0, b=0})
        end
        return
    end
    
    -- Additional validation for custom missions
    if missionNum < 1 and not validateCustomMissionConfig(config) then
        printToAll("Error: Custom mission " .. missionNum .. " has invalid configuration. Please check that it has valid wires configuration.", {r=1, g=0, b=0})
        return
    elseif missionNum == 0 then
        printToAll("Notice: Mission 0 is reserved for testing and not for public play.", {r=1, g=0, b=0})
    end
    
    doubleHandColors = {}
    sortPlayerColors(playerNum)
    spawnMissionCard(missionNum)
    adjustDial(missionNum, playerNum)

    -- Set rule card rotations dynamically based on mission features
    setDynamicRuleCardRotations(missionNum, config)

    -- From mission 31 onwards or custom missions with extra character cards, you can choose which character cards you would like
    local config = getMissionConfig(missionNum)
    local needsCharacterSelection = hasCharacterSelection(missionNum, config)

    -- Get all objects out of bag

    
    if needsCharacterSelection then
        printToAll("----------------------------")
        printToAll("Please select which character cards you would like to use for this mission.")
        fontSize = 250
        addWidth = 600
        removeWidth = 1000
        addZPosition = -2.2
        removeZPosition = -2.7
        
        -- Get available character cards for this mission
        local availableCards = getAvailableCharacterCards(missionNum)
        
        createStandardButton("finishSetupAfterCharSel", "Finish Setup", {0, -3.2}, 1700, fontSize)
        
        -- Setup character card selection interface
        setupCharacterCardSelection(missionNum, availableCards)
        allBagsBags = getObjectsWithTag("All")
        for _, bag in ipairs(allBagsBags) do
            bag.destruct()
        end
    else
        -- Default to Double Detector for regular missions <= 30 or custom missions without character specification
        for i = 1, playerNum - 1 do
            table.insert(characterCardSelection, "Double Detector")
        end
        finishSetupAfterCharSel()
    end
end

-- Adds a character card to the mission selection list
function addToCharList(selection)
    printToAll("----------------------------")
    if #characterCardSelection == playerNum - 1 then
        printToAll("Character Selection List is now full. Please remove a card first to add a new one.", {r=1,g=0,b=0})
        printToAll("Current selection:")
        printToAll("1: Captain - Double Detector")
        for num, card in ipairs(characterCardSelection) do
            printToAll(num + 1 .. ": " .. card)
        end
        return
    elseif selection ~= "Double Detector" then
        for _, card in ipairs(characterCardSelection) do
            if card == selection then
                printToAll("You can only have one of this character card.", {r=1,g=0,b=0})
                printToAll("Current selection:")
                printToAll("1: Captain - Double Detector")
                for num, card in ipairs(characterCardSelection) do
                    printToAll(num + 1 .. ": " .. card)
                end
                return
            end
        end
    end
    table.insert(characterCardSelection, selection)
    printToAll(selection .. " has been added to the selection.")
    printToAll("Current selection:")
    printToAll("1: Captain - Double Detector")
    for num, card in ipairs(characterCardSelection) do
        printToAll(num + 1 .. ": " .. card)
    end
end

function removeFromCharList(selection)
    printToAll("----------------------------")
    if #characterCardSelection == 0 then
        printToAll(selection .. " was not found in the selection.", {r=1,g=0,b=0})
        printToAll("Current selection:")
        printToAll("1: Captain - Double Detector")
        for num, card in ipairs(characterCardSelection) do
            printToAll(num + 1 .. ": " .. card)
        end
        return
    else
        for num, card in ipairs(characterCardSelection) do
            if card == selection then
                table.remove(characterCardSelection, num)
                printToAll(selection .. " has been removed from the selection.")
                printToAll("Current selection:")
                printToAll("1: Captain - Double Detector")
                for num, card in ipairs(characterCardSelection) do
                    printToAll(num + 1 .. ": " .. card)
                end
                return
            end
        end
    end
    printToAll(selection .. " was not found in the selection.", {r=1,g=0,b=0})
    printToAll("Current selection:")
    printToAll("1: Captain - Double Detector")
    for num, card in ipairs(characterCardSelection) do
        printToAll(num + 1 .. ": " .. card)
    end
end

function finishSetupAfterCharSel()
    if #characterCardSelection ~= playerNum - 1 then
        printToAll("----------------------------")
        printToAll("You have not selected enough characters. You need " .. playerNum .. " selected.", {r=1,g=0,b=0})
        if #characterCardSelection == 0 then
            printToAll("Character Selection List is currently empty.")
        else
            printToAll("Current selection:")
            printToAll("1: Captain - Double Detector")
            for num, card in ipairs(characterCardSelection) do
                printToAll(num + 1 .. ": " .. card)
            end
        end
        return
    end
    for _, object in ipairs(getObjectsWithAllTags({"Character", "Destroy"})) do
        object.destruct()
    end
    missionNum = tonumber(getObjectsWithAllTags({"Mission", "Destroy"})[1].getName())
    buttons = self.getButtons()
    for i = 3, #buttons - 1 do
        self.removeButton(i)
    end
    shuffledPlayers = sortCharacters(missionNum)
    captainColor = shuffledPlayers[1]
    
    -- Check if captain should be announced (for reshuffle missions)
    local characterSpecial = getCharacterSpecial(missionNum)
    if characterSpecial and characterSpecial.captainSelection == "reshuffle" then
        local colors = {
            Blue    = {0.118, 0.53, 1},
            Green   = {0.192, 0.701, 0.168},
            Purple  = {0.627, 0.125, 0.941},
            Red     = {0.856, 0.1, 0.094},
            White   = {1, 1, 1}
        }
        printToAll("The captain of this mission is " .. captainColor .. "!", colors[captainColor])
    end
    while playerColors[1] ~= captainColor do
        wrap(playerColors, 1)
    end
    moveTokens(missionNum)
    prepareWiresAndMarkers(missionNum)
    allBagsBags = getObjectsWithTag("All")
    for _, bag in ipairs(allBagsBags) do
        bag.destruct()
    end
end

function sortPlayerColors(playerNum)
    players = {}
    for _, p in ipairs(Player.getPlayers()) do
        if p.color ~= "Black" and p.color ~= "Grey" then
            table.insert(players, p)
        end
    end
    blueGreen = {"Blue", "Green"}
    if contains(playerColors, "Blue") then
        blueGreen = {"Green", "Blue"}
    end
    if playerNum < 4 then
        toInsert = nil
        if playerColors[1] == blueGreen[1] then
            toInsert = blueGreen[1]
        elseif playerColors[1] == blueGreen[2] then
            toInsert = blueGreen[2]
        else
            playerColors[1] = blueGreen[1]
            players[1].changeColor(blueGreen[1])
            toInsert = blueGreen[1]
        end
        table.insert(doubleHandColors, toInsert)
    end
    if playerNum == 2 then
        toInsert = nil
        if playerColors[2] == blueGreen[1] then
            toInsert = blueGreen[1]
        elseif playerColors[2] == blueGreen[2] then
            toInsert = blueGreen[2]
        else
            playerColors[2] = blueGreen[2]
            players[2].changeColor(blueGreen[2])
            toInsert = blueGreen[2]
        end
        table.insert(doubleHandColors, toInsert)
    end
    
    -- Handle team assignment based on mission configuration
    local config = getMissionConfig(missionNum)
    if config and config.teamAssignment then
        for i = 1, #players do
            players[i].team = config.teamAssignment
        end
    else
        for i = 1, #players do
            if players[i].team != "None" then
                players[i].team = "None"
            end
        end
    end
end

function sortCharacters(missionNum)
    shuffledPlayers = shuffle(playerColors)
    ret = shuffledPlayers
    
    local characterSpecial = getCharacterSpecial(missionNum)
    
    -- Check for captain selection override
    if characterSpecial and characterSpecial.captainSelection == "reshuffle" then
        -- Use shuffled order for captain selection
        ret = shuffledPlayers
    elseif characterSpecial and characterSpecial.randomCaptain == false then
        -- Legacy support: use original player order
        ret = playerColors
    elseif missionNum == 65 then -- Keep existing mission 65 logic for compatibility
        ret = playerColors
    end
    
    flipped = false
    -- Check for captain flipped rule
    if characterSpecial and characterSpecial.captainFlipped then
        flipped = true
    end
    
    captainCardBag = searchGlobalBag({"Captain", "Character", "Pack0"})[1]
    captainCard = generateWithStandardProps(captainCardBag, characterPositions[shuffledPlayers[1]], characterRotations[shuffledPlayers[1]], false, true, flipped)

    -- Check for captain destroyed rule
    if characterSpecial and characterSpecial.captainDestroyed then
        captainCard.destruct()
    end

    local characterSpecial = getCharacterSpecial(missionNum)
    if characterSpecial and characterSpecial.otherCardsDestroyed then
        return ret
    end

    doubleDetectorCount = 0
    doubleDetectorTotal = 0
    for _, selection in ipairs(characterCardSelection) do
        if selection == "Double Detector" then
            doubleDetectorTotal = doubleDetectorTotal + 1
        end
    end
    
    count = 1
    characterCardsBag0 = searchGlobalBag({"Character", "Pack0"})[1]
    characterCardsBag3 = searchGlobalBag({"Character", "Pack3"})[1]
    characterCards = characterCardsBag0.getObjects()
    for _, card in ipairs(characterCardsBag3.getObjects()) do
        table.insert(characterCards, card)
    end
    shuffleInPlace(characterCards)
    for num, card in ipairs(characterCards) do
        for _, selection in ipairs(characterCardSelection) do
            if card.name == selection then
                if doubleDetectorCount < doubleDetectorTotal or selection ~= "Double Detector" then
                    bag = characterCardsBag0
                    if contains(card.tags, "Pack3") then
                        bag = characterCardsBag3
                    end
                    c = generateWithStandardProps(bag, characterPositions[shuffledPlayers[count + 1]], characterRotations[shuffledPlayers[count + 1]], false, true, flipped, card.guid)
                    count = count + 1
                    if selection == "Double Detector" then
                        doubleDetectorCount = doubleDetectorCount + 1
                    end
                    break
                end
            end
        end
    end
    return ret
end

-- Sets up wires, markers, and tokens based on mission-specific requirements
function prepareWiresAndMarkers(missionNum)
    piles = {}
    local config = getMissionConfig(missionNum)
    
    -- Check minimum player requirements
    if config.minPlayers and playerNum < config.minPlayers then
        if missionNum < 1 then
            printToAll("Error: Custom mission " .. missionNum .. " cannot be played with only " .. playerNum .. " players.", {r=1, g=0, b=0})
        else
            printToAll("Error: Mission " .. missionNum .. " cannot be played with only " .. playerNum .. " players.", {r=1, g=0, b=0})
        end
        return
    end
    
    -- Determine wire configuration based on player count
    local wires = config.wires
    if config.wiresAlt then
        -- Check for explicit altCount configuration
        if config.altCount and contains(config.altCount, playerNum) then
            wires = config.wiresAlt
        -- Apply default altCount = {2} behavior for missions that should use it
        elseif shouldUseDefaultAltCount(missionNum, config) and playerNum == 2 then
            wires = config.wiresAlt
        -- Legacy support for threshold-based system
        elseif config.threshold and playerNum >= config.threshold then
            wires = config.wiresAlt
        end
    end
    
    -- Handle special configurations
    handleMissionSpecialConfig(missionNum, config)
    
    -- Apply wire and equipment configuration
    if wires then
        sortWiresAndEquipment(piles, wires[1], wires[2], wires[3], wires[4], wires[5], wires[6], wires[7])
    end
    
    -- Red wires setup (before sorting and positioning)
    if config.redWires then
        handleSpecialRedWires(config.redWires)
    end
    
    dealWiresToHands(missionNum, piles)
    
    -- Display special message if configured
    if config and config.specialMessage then
        printToAll(config.specialMessage)
    end

    -- Do not place the token bags if explicitly excluded
    if config.excludeTokenBags ~= true then
        setupTokenBags()
    end
end

-- Handles special mission configurations that don't fit the standard pattern
function handleMissionSpecialConfig(missionNum, config)
    -- Validation tokens
    if config.validationTokens then
        placeValidationTokens(config.validationTokens[1], config.validationTokens[2])
    end
    
    -- Timer setup
    if config.timer then
        local t = config.timer
        timer = spawnObject({
            type = "Digital Clock",
            position = t.position,
            rotation = t.rotation,
            scale = t.scale
        })
        timer.locked = true
        timer.setColorTint({r=0, g=0, b=0})
        timer.setValue(playerNum < 3 and t.value2Player or t.value3Plus)
        timer.addTag("Destroy")
    end
    
    -- Sequence setup
    if config.sequence ~= nil then
        handleSequenceNumbers(config.sequence)
    end
    
    -- Music setup
    if config.music then
        MusicPlayer.setCurrentAudioclip({
            url = config.music.url,
            title = config.music.title
        })
        MusicPlayer.play()
        printToAll("Use the built-in music player to control the audio - select 'Music' on the toolbar at the top.")
    end
    
    -- Random info selection
    if config.randomInfo then
        chooseRandomInfo(false)
    end
    
    -- Number card handling
    if config.numberCard then
        handleSingleNumberCard(config.numberCard)
    elseif config.equipmentNumberCards then
        handleEquipmentNumberCards()
    elseif config.shuffleNumbers then
        handleShuffleNumbers()
    elseif config.gridNumbers then
        handleGridNumbers()
    elseif config.numberCards5 then
        handleNumberCards5(missionNum)
    elseif config.numberCardSpecial then
        handleNumberCardSpecial(config.numberCardSpecial)
    elseif config.numberCardWithWarning then
        handleNumberCardWithWarning(config.numberCardWithWarning)
    end
    
    -- Warning tokens
    if config.warningToken then
        if type(config.warningToken) == "number" then
            local warningBag = searchGlobalBag({"Destroy", "Scripted", "Warning"})[1]
            generateWithStandardProps(warningBag, numberTokenPositions[config.warningToken], {0.00, 180.00, 0.00}, false, true, false)
        end
    end
    
    -- Constraint cards
    if config.constraintCards then
        handleConstraintCards(config.constraintCards, missionNum)
    elseif config.shuffleConstraints then
        handleShuffleConstraints()
    elseif config.constraintCards5 then
        handleConstraintCards5()
    elseif config.gridConstraints then
        handleGridConstraints()
    elseif config.constraintCardSpecial then
        handleConstraintCardSpecial(config.constraintCardSpecial)
    end
    
    -- Oxygen tokens
    if config.oxygenTokens then
        handleOxygenTokens(config.oxygenTokens)
    end
    
    -- Challenge cards
    if config.challengeCards then
        handleChallengeCards(missionNum)
    end
    
    -- Nano setup
    if config.nano then
        handleNano(config.nano[1], config.nano[2])
    end
    
    -- Special grid handling with nano
    if config.nanoOnSeven then
        handleNanoOnSeven()
    end
    
    -- Custom distributions
    if config.customDistribution then
        handleCustomDistribution(config.customDistribution)
    end
    
    -- Sequence card
    if config.sequenceCard then
        handleSequenceCard()
    end
    
    -- Bunker card and standee
    if config.bunkerCard then
        local bunkerCardBag = searchGlobalBag({"Bunker"})[1]
        generateWithStandardProps(bunkerCardBag, {-37.83, 1.50, 0.00}, {0.00, 180.00, 0.00}, false, true, false)
    end
    
    if config.standee then
        local standeeBag = searchGlobalBag({"Standee"})[1]
        generateWithStandardProps(standeeBag, {-39.73, 3.12, -3.28}, {0.00, 90.00, 0.00}, false, true, false)
    end
end

-- Helper functions for mission-specific configurations

-- Sets up sequence cards for missions with numbered sequences (side A or B)
function handleSequenceNumbers(sequenceSide) -- 0 being side A and 1 being side B
    sequenceRotation = {0.00, 270.00, 0.00}
    if sequenceSide == 1 then
        sequenceRotation = {0.00, 270.00, 180.00}
    end
    numberCardPositions = layoutConfigs.numberCards.sequence3
    numberCardBag = searchGlobalBag({"Numbers"})[1]
    numberCards = numberCardBag.getObjects()
    shuffleInPlace(numberCards)
    for i = 1, 3 do
        generateWithStandardProps(numberCardBag, numberCardPositions[i], {0.00, 90.00, 0.00}, false, true, false, numberCards[i].guid)
        if i ~= 1 then
            warningBag = searchGlobalBag({"Destroy", "Scripted", "Warning"})[1]
            generateWithStandardProps(warningBag, numberTokenPositions[tonumber(numberCards[i].name)], {0.00, 180.00, 0.00})
        end
    end

    sequenceCardBag = searchGlobalBag({"Sequence"})[1]
    generateWithStandardProps(sequenceCardBag, {-44.19, 1.50, -6.22}, sequenceRotation, false, true, false)
end

-- Sets up nano components with specified position and direction
function handleNano(startPos, direction) -- 0 is left and 1 is right, wires are sorted in sortWiresAndEquipment
    -- Resolve position if it's a string identifier
    local actualPosition = startPos
    if type(startPos) == "string" then
        if startPos == "mission-2" then
            actualPosition = characterPositions[captainColor]
        else
            -- Could add other identifiers here in the future (e.g., "player1", "center", etc.)
            log("Warning: Unknown position identifier: " .. startPos)
            return
        end
    end
    
    nanoRotation = {0.00, 0.00, 0.00}
    if direction == 1 then
        nanoRotation = {0.00, 180.00, 0.00}
    end
    nanoBag = searchGlobalBag({"Nano"})[1]
    generateWithStandardProps(nanoBag, {actualPosition[1], actualPosition[2] + 0.5, actualPosition[3]}, nanoRotation, false, true, false)
end

-- Handles red wire special setups
function handleSpecialRedWires(redWiresConfig)
    local redWireBag = searchGlobalBag({"Red", "Scripted", "Wires"})[1]
    local redWires = redWireBag.getObjects()
    shuffleInPlace(redWires)
    if redWiresConfig == 3 then
        -- Mission 13: Deal 3 red wires to piles (positioning happens in dealWiresToHands)
        local redsRevealed = {}
        
        -- Add one red wire to each of the first 3 players
        for i = 1, 3 do
            if piles[i] then
                table.insert(piles[i], redWires[i])
                table.insert(redsRevealed, redWires[i])
            else
                printToAll("Error: No pile found for player " .. i .. " in red wires setup", {r=1, g=0, b=0})
            end
        end
        
        setupMarkers(redsRevealed, 3, 3, "Red")
        for _, pile in ipairs(piles) do
            table.sort(pile, function(a, b) return tonumber(a.description) < tonumber(b.description) end)
        end
    elseif redWiresConfig == "all" then
        -- Mission 54: Deal all red wires
        for i = 1, #redWires do
            generateWithStandardProps(redWireBag, {-16.78, 1.59, -14.52}, {0.00, 90.00, 180.00}, false, true, false, redWires[i].guid)
        end
    end
end

-- Handles single number card setup
function handleSingleNumberCard(cardConfig)
    -- Resolve position if it's a string identifier
    local actualPosition = cardConfig.position
    local actualRotation = cardConfig.rotation
    if type(cardConfig.position) == "string" then
        if cardConfig.position == "mission-4" then
            isBlueGreen = (captainColor == "Blue" or captainColor == "Green") and 1 or -1
            actualPosition = {characterPositions[captainColor][1], characterPositions[captainColor][2] + 0.20, characterPositions[captainColor][3] + (3 * isBlueGreen)}
            actualRotation = {characterRotations[captainColor][1], characterRotations[captainColor][2], characterRotations[captainColor][3] + 180}
        else
            -- Could add other identifiers here in the future
            log("Warning: Unknown position identifier: " .. cardConfig.position)
            return
        end
    end

    local numberCards = searchGlobalBag({"Numbers"})[1]
    generateWithStandardProps(numberCards, actualPosition, actualRotation, false, true, false)
end

-- Handles player-based number card distribution
function handleEquipmentNumberCards()
    local numberCardPositions = layoutConfigs.numberCards.equipmentBased
    local numberCardBag = searchGlobalBag({"Numbers"})[1]
    local numberCards = numberCardBag.getObjects()
    shuffleInPlace(numberCards)
    for i = 1, playerNum do
        generateWithStandardProps(numberCardBag, numberCardPositions[i], {0.00, 180.00, 0.00}, false, true, false, numberCards[i].guid)
    end
end

-- Handles shuffling all number cards
function handleShuffleNumbers()
    local numberCardBag = searchGlobalBag({"Numbers"})[1]
    local numberCards = numberCardBag.getObjects()
    shuffleInPlace(numberCards)

    for i = 1, #numberCards do
        generateWithStandardProps(numberCardBag, {-24.35, 1.56, 4.60}, {0.00, 180.00, 180.00}, false, true, false, numberCards[i].guid)
    end
end

-- Handles 12-number grid layout
function handleGridNumbers()
    local cardPositions = layoutConfigs.numberCards.grid3x4
    local numberCardBag = searchGlobalBag({"Numbers"})[1]
    local numberCards = numberCardBag.getObjects()
    table.sort(numberCards, function(a, b) return tonumber(a.name) < tonumber(b.name) end)
    for i = 1, 12 do
        generateWithStandardProps(numberCardBag, cardPositions[i], {0.00, 180.00, 0.00}, false, true, false, numberCards[i].guid)
    end
end

-- Handles 5 number cards setup
function handleNumberCards5(missionNum)
    local numberCardPositions = layoutConfigs.numberCards.vertical5
    local numberCardBag = searchGlobalBag({"Numbers"})[1]
    local numberCards = numberCardBag.getObjects()
    shuffleInPlace(numberCards)
    
    if missionNum == 36 then
        -- Mission 36: 5 cards with warning tokens
        for i = 1, 5 do
            local number = generateWithStandardProps(numberCardBag, numberCardPositions[i], {0.00, 90.00, 0.00}, false, true, false, numberCards[i].guid)
            local warningBag = searchGlobalBag({"Destroy", "Scripted", "Warning"})[1]
            generateWithStandardProps(warningBag, numberTokenPositions[tonumber(number.getName())], {0.00, 180.00, 0.00}, false, true, false)
        end
    elseif missionNum == 62 then
        -- Mission 62: Player-based number distribution1
        table.sort(numberCards, function(a, b) return tonumber(a.name) < tonumber(b.name) end)
        for i = 1, playerNum do
            generateWithStandardProps(numberCardBag, numberCardPositions[i], {0.00, 90.00, 0.00}, false, true, false, numberCards[i].guid)
        end
    end
end

-- Handles special number card configurations
function handleNumberCardSpecial(specialType)
    if specialType == "faceUpAndShuffle" then
        -- Mission 15: One card face-up, rest shuffled face-down
        local numberCardBag = searchGlobalBag({"Numbers"})[1]
        local numberCards = numberCardBag.getObjects()
        shuffleInPlace(numberCards)

        for i = 1, #numberCards do
            generateWithStandardProps(numberCardBag, {-24.35, 1.56, i == 1 and -4.60 or 4.60}, {0.00, 180.00, i == 1 and 0.00 or 180.00}, false, true, false, numberCards[i].guid)
        end
    end
end

-- Handles number card with warning token (Mission 23)
function handleNumberCardWithWarning(cardConfig)
    local numberCardBag = searchGlobalBag({"Numbers"})[1]
    local numberCards = numberCardBag.getObjects()
    shuffleInPlace(numberCards)
    
    -- Place one number card
    local number = generateWithStandardProps(numberCardBag, cardConfig.position, cardConfig.rotation, false, true, false, numberCards[1].guid)
    
    -- Place warning token based on the number card
    local warningBag = searchGlobalBag({"Destroy", "Scripted", "Warning"})[1]
    generateWithStandardProps(warningBag, numberTokenPositions[tonumber(number.getName())], {0.00, 180.00, 0.00}, false, true, false)
end

-- Filters constraint cards to only include specified letter range
-- Parameters:
--   startLetter: Starting letter (e.g., "A")
--   endLetter: Ending letter (e.g., "E") 
--   position: Position to place the filtered deck {x, y, z}
--   rotation: Rotation for the filtered deck {x, y, z}
-- Returns: Table of filtered constraint cards
function filterConstraintCardsByRange(constraintCards, startLetter, endLetter, position, rotation)
    local cardsToDeal = {}
    local startByte = string.byte(startLetter)
    local endByte = string.byte(endLetter)
    
    for i = 1, #constraintCards do
        local cardName = constraintCards[i].name
        local cardByte = string.byte(cardName)
        
        if cardByte >= startByte and cardByte <= endByte then
            table.insert(cardsToDeal, constraintCards[i])
        end
    end

    if position and rotation then
        for i = 1, #cardsToDeal do
            local constraintCardBag = searchGlobalBag({"Constraint"})[1]
            generateWithStandardProps(constraintCardBag, position, rotation, false, true, false, cardsToDeal[i].guid)
        end
    end
    
    return cardsToDeal
end

-- Handles various constraint card configurations
function handleConstraintCards(constraintType, missionNum)
    if constraintType == "special31" then
        -- Mission 31: Complex constraint validation logic
        local cardsAreGood = false
        while not cardsAreGood do
            cardsAreGood = true
            local constraintBag = searchGlobalBag({"Constraint"})[1]
            local constraintCards = constraintBag.getObjects()
            shuffleInPlace(constraintCards)
            local cardsToDeal = filterConstraintCardsByRange(constraintCards, "A", "E")
            local constraintCardPositions = layoutConfigs.constraintCards.mission31Layout
            if playerNum < 3 then
                local count = 0
                for i = 1, #cardsToDeal do
                    if cardsToDeal[i].getName() == "A" or cardsToDeal[i].getName() == "B" then
                        count = count + 1
                    end
                end
                if count == 2 then cardsAreGood = false end
                count = 0
                for i = 1, #cardsToDeal do
                    if cardsToDeal[i].getName() == "C" or cardsToDeal[i].getName() == "D" then
                        count = count + 1
                    end
                end
                if count == 2 then cardsAreGood = false end
            end
            if not cardsAreGood then
                for _, card in ipairs(cardsToDeal) do
                    card.destruct()
                end
            else
                for i = 1, #cardsToDeal do
                    generateWithStandardProps(constraintBag, constraintCardPositions[i], {0.00, 90.00, 0.00}, false, true, false, cardsToDeal[i].guid)
                end
            end
        end
    elseif constraintType == "handDistribution" then
        -- Mission 34: Distribute constraint cards to player hands
        local constraintBag = searchGlobalBag({"Constraint"})[1]
        local constraintCards = constraintBag.getObjects()
        shuffleInPlace(constraintCards)
        local cardsToDeal = filterConstraintCardsByRange(constraintCards, "A", "E")
        for num, card in ipairs(cardsToDeal) do
            if num <= playerNum then
                generateWithStandardProps(constraintBag, playerHandPositions[playerColors[num]], characterRotations[playerColors[num]], false, true, false, card.guid)
            end
        end
    elseif constraintType == "complexDistribution" then
        -- Mission 61: Complex constraint distribution logic
        local constraintBag = searchGlobalBag({"Constraint"})[1]
        local constraintCards = constraintBag.getObjects()
        shuffleInPlace(constraintCards)
        local cardsToDeal = filterConstraintCardsByRange(constraintCards, "A", "E")
        
        local j = 0
        for i = 1, #cardsToDeal do
            j = j + 1
            if j > #cardsToDeal then break end
            local isBlueGreen = 1
            if playerColors[i] == "Blue" or playerColors[i] == "Green" then
                isBlueGreen = -1
            end
            if i == 1 and playerNum < 4 then
                if playerNum == 2 then
                    generateWithStandardProps(constraintBag,
                        {characterPositions[playerColors[i]][1],
                        characterPositions[playerColors[i]][2] + 5,
                        characterPositions[playerColors[i]][3] - (3 * isBlueGreen)},
                        {0.00, characterRotations[playerColors[i]][2], 0.00},
                        false,
                        true,
                        false,
                        cardsToDeal[j].guid
                    )
                    j = j + 1
                    generateWithStandardProps(constraintBag,
                        {characterPositions[playerColors[i]][1] + (7 * isBlueGreen),
                        characterPositions[playerColors[i]][2],
                        characterPositions[playerColors[i]][3]},
                        {0.00, characterRotations[playerColors[i]][2], 0.00},
                        false,
                        true,
                        false,
                        cardsToDeal[j].guid
                    )
                    j = j + 1
                    generateWithStandardProps(constraintBag,
                        {characterPositions[playerColors[i]][1] + (-7 * isBlueGreen),
                        characterPositions[playerColors[i]][2],
                        characterPositions[playerColors[i]][3]},
                        {0.00, characterRotations[playerColors[i]][2], 0.00},
                        false,
                        true,
                        false,
                        cardsToDeal[j].guid
                    )
                elseif playerNum == 3 then
                    generateWithStandardProps(constraintBag,
                        {characterPositions[playerColors[i]][1],
                        characterPositions[playerColors[i]][2] + 5,
                        characterPositions[playerColors[i]][3] - (3 * isBlueGreen)},
                        {0.00, characterRotations[playerColors[i]][2], 0.00},
                        false,
                        true,
                        false,
                        cardsToDeal[j].guid
                    )
                    j = j + 1
                    generateWithStandardProps(constraintBag,
                        {characterPositions[playerColors[i]][1] + (-7 * isBlueGreen),
                        characterPositions[playerColors[i]][2],
                        characterPositions[playerColors[i]][3]},
                        {0.00, characterRotations[playerColors[i]][2], 0.00},
                        false,
                        true,
                        false,
                        cardsToDeal[j].guid
                    )
                end
            else
                generateWithStandardProps(constraintBag,
                    {characterPositions[playerColors[i]][1],
                    characterPositions[playerColors[i]][2] + 5,
                    characterPositions[playerColors[i]][3] - (3 * isBlueGreen)},
                    {0.00, characterRotations[playerColors[i]][2], 0.00},
                    false,
                    true,
                    false,
                    cardsToDeal[j].guid
                )
            end
        end
        filterConstraintCardsByRange(constraintCards, "F", "L", {-24.35, 1.56, 4.60}, {0.00, 180.00, 180.00})
    elseif constraintType == "special-8" then
        local constraintBag = searchGlobalBag({"Constraint"})[1]
        local constraintCards = constraintBag.getObjects()
        shuffleInPlace(constraintCards)
        local cardsToDeal = filterConstraintCardsByRange(constraintCards, "A", "Z")
        for i = 1, playerNum do
            local isBlueGreen = 1
            if playerColors[i] == "Blue" or playerColors[i] == "Green" then
                isBlueGreen = -1
            end
            generateWithStandardProps(constraintBag,
                {characterPositions[playerColors[i]][1],
                characterPositions[playerColors[i]][2] + 2,
                characterPositions[playerColors[i]][3] - (3 * isBlueGreen)},
                {0.00, characterRotations[playerColors[i]][2], 0.00},
                false,
                true,
                false,
                cardsToDeal[i].guid
            )
        end
        for i = playerNum + 1, #cardsToDeal do
            generateWithStandardProps(constraintBag, {-24.35, 1.56, 4.60}, {0.00, 180.00, 180.00}, false, true, false, cardsToDeal[i].guid)
        end
    end
end

-- Handles simple constraint card shuffling
function handleShuffleConstraints()
    local constraintBag = searchGlobalBag({"Constraint"})[1]
    local constraintCards = constraintBag.getObjects()
    shuffleInPlace(constraintCards)
    for i = 1, #cardsToDeal do
        generateWithStandardProps(constraintBag, {-24.35, 1.56, 4.60}, {0.00, 180.00, 180.00}, false, true, false, cardsToDeal[i].guid)
    end
end

-- Handles special constraint card configurations
function handleConstraintCardSpecial(specialType)
    if specialType == "faceUpAndShuffle" then
        -- Mission 32: One card face-up, rest shuffled face-down
        local constraintBag = searchGlobalBag({"Constraint"})[1]
        local constraintCards = constraintBag.getObjects()
        shuffleInPlace(constraintCards)
        local cardsToDeal = filterConstraintCardsByRange(constraintCards, "A", "L")
        
        for i = 1, #cardsToDeal do
            generateWithStandardProps(constraintBag, {-24.35, 1.56, i == 1 and -4.60 or 4.60}, {0.00, 180.00, i == 1 and 0.00 or 180.00}, false, true, false, cardsToDeal[i].guid)
        end
    end
end

-- Handles 5 constraint cards setup
function handleConstraintCards5()
    local constraintPositions = layoutConfigs.constraintCards.mission66Layout
    local constraintCardBag = searchGlobalBag({"Constraint"})[1]
    local constraintCards = constraintCardBag.getObjects()
    shuffleInPlace(constraintCards)
    local cardsToDeal = filterConstraintCardsByRange(constraintCards, "A", "E")
    for num, card in ipairs(cardsToDeal) do
        generateWithStandardProps(constraintCardBag, constraintPositions[num], {0.00, 180.00, 0.00}, false, true, false, card.guid)
    end
end

-- Handles grid constraint cards setup
function handleGridConstraints()
    local cardPositions = {
        {-44.08, 1.50, 8.31},  {-38.14, 1.50, 8.31},  {-32.19, 1.50, 8.31},  {-26.24, 1.50, 8.31},
        {-44.08, 1.50, 0.00},  {-38.14, 1.50, 0.00},  {-32.19, 1.50, 0.00},  {-26.24, 1.50, 0.00},
        {-44.08, 1.50, -8.32}, {-38.14, 1.50, -8.32}, {-32.19, 1.50, -8.32}, {-26.24, 1.50, -8.32}
    }
    local constraintCardBag = searchGlobalBag({"Constraint"})[1]
    local constraintCards = constraintCardBag.getObjects()
    shuffleInPlace(constraintCards)
    local cardsToDeal = filterConstraintCardsByRange(constraintCards, "A", "L")
    for i = 1, #cardsToDeal do
        obj = generateWithStandardProps(constraintCardBag,
            {cardPositions[i][1], cardPositions[i][2] + 1, cardPositions[i][3]},
            {0.00, 180.00, 0.00}, false, true, false, cardsToDeal[i].guid)
        obj.setScale({2.00, 1.00, 2.00})
    end
end

-- Handles various oxygen token configurations
function handleOxygenTokens(tokenType)
    local oxygenTokenBag = searchGlobalBag({"OxygenTokens"})[1]
    
    if tokenType == "perPlayer2" then
        -- Mission 44: 2 tokens per player
        for i = 1, playerNum * 2 do
            generateWithStandardProps(oxygenTokenBag, {-16.65, 1.57 + (i * 0.2), -14.39}, {0.00, 180.00, 0.00}, false, true, false)
        end
    elseif tokenType == "playerBased" then
        -- Mission 49: Variable tokens based on player count
        for i = 1, playerNum do
            local isBlueGreen = 1
            if playerColors[i] == "Blue" or playerColors[i] == "Green" then
                isBlueGreen = -1
            end
            local tokenCount = 7
            if playerNum == 3 then tokenCount = 6
            elseif playerNum == 4 then tokenCount = 5
            elseif playerNum == 5 then tokenCount = 4 end
            for j = 1, tokenCount do
                generateWithStandardProps(oxygenTokenBag, {
                    characterPositions[playerColors[i]][1] + (7 * isBlueGreen),
                    characterPositions[playerColors[i]][2] + (i * 0.2),
                    characterPositions[playerColors[i]][3]
                }, {0.00, characterRotations[playerColors[i]][2], 0.00}, false, true, false)
            end
        end
    elseif tokenType == "playerBasedSpecial" then
        -- Mission 54: Special distribution
        local isBlueGreen = 1
        local tokenCount = 9
        if playerNum == 3 then tokenCount = 6
        elseif playerNum == 4 then tokenCount = 3
        elseif playerNum == 5 then tokenCount = 2 end
        for i = 1, playerNum do
            if playerColors[i] == "Blue" or playerColors[i] == "Green" then
                isBlueGreen = -1
            end
            for j = 1, tokenCount do
                generateWithStandardProps(oxygenTokenBag, {
                    characterPositions[playerColors[i]][1] + (7 * isBlueGreen),
                    characterPositions[playerColors[i]][2] + (i * 0.2),
                    characterPositions[playerColors[i]][3]
                }, {0.00, characterRotations[playerColors[i]][2], 0.00}, false, true, false)
            end
        end
        for i = 1, 32 - (tokenCount * playerNum) do
            generateWithStandardProps(oxygenTokenBag, {-24.35, 3.00 + (i * 0.2), 0.00}, {0.00, 180.00, 0.00})
        end
    elseif tokenType == "scalingToLeader" then
        -- Mission 63: Scaling tokens to leader
        local tokenCount = 14
        if playerNum == 3 then tokenCount = 18
        elseif playerNum == 4 then tokenCount = 24
        elseif playerNum == 5 then tokenCount = 30 end
        local isBlueGreen = 1
        if playerColors[1] == "Blue" or playerColors[1] == "Green" then
            isBlueGreen = -1
        end
        for i = 1, tokenCount do
            generateWithStandardProps(oxygenTokenBag, {
                characterPositions[playerColors[1]][1] + (7 * isBlueGreen),
                characterPositions[playerColors[1]][2] + (i * 0.2),
                characterPositions[playerColors[1]][3]
            }, {0.00, characterRotations[playerColors[1]][2], 0.00}, false, true, false)
        end
    end
end

-- Handles challenge cards setup
function handleChallengeCards(missionNum)
    local layout = getPositionLayout("challengeCards", playerNum, missionNum)
    local challengePositions = layout or layoutConfigs.challengeCards.standard

    local challengeCardBag = searchGlobalBag({"Challenge"})[1]
    local challengeCards = challengeCardBag.getObjects()
    shuffleInPlace(challengeCards)
    local challenges = {}
    for i = 1, playerNum do
        table.insert(challenges, challengeCards[i])
    end
    table.sort(challenges, function(a, b) return tonumber(a.name) < tonumber(b.name) end)
    for i = 1, playerNum do
        c = generateWithStandardProps(challengeCardBag, challengePositions[i], {0.00, 180.00, 0.00}, false, true, false, challenges[i].guid)
        if c.getName() == "8" then
            local numberCardBag = searchGlobalBag({"Numbers"})[1]
            local numberCards = numberCardBag.getObjects()
            shuffleInPlace(numberCards)
            generateWithStandardProps(numberCardBag, {
                challengePositions[i][1] + 3.89,
                challengePositions[i][2] + 0.02,
                challengePositions[i][3] - 5.04
            }, {0.27, 105.00, 0.00}, false, true, false, numberCards[1].guid)
            generateWithStandardProps(numberCardBag, {
                challengePositions[i][1] + 3.89,
                challengePositions[i][2] + 0.02,
                challengePositions[i][3] + 5.04
            }, {0.15, 75.00, 0.17}, false, true, false, numberCards[2].guid)
        end
    end
end

-- Handles nano setup with number 7 detection
function handleNanoOnSeven()
    local cardPositions = {
        {-44.08, 1.50, 8.31},  {-38.14, 1.50, 8.31},  {-32.19, 1.50, 8.31},  {-26.24, 1.50, 8.31},
        {-44.08, 1.50, 0.00},  {-38.14, 1.50, 0.00},  {-32.19, 1.50, 0.00},  {-26.24, 1.50, 0.00},
        {-44.08, 1.50, -8.32}, {-38.14, 1.50, -8.32}, {-32.19, 1.50, -8.32}, {-26.24, 1.50, -8.32}
    }
    local numberCardBag = searchGlobalBag({"Numbers"})[1]
    local numberCards = numberCardBag.getObjects()
    table.sort(numberCards, function(a, b) return tonumber(a.name) < tonumber(b.name) end)
    for i = 1, 12 do
        local card = generateWithStandardProps(numberCardBag, cardPositions[i], {0.00, 180.00, 0.00}, false, true, false, numberCards[i].guid)
        if card.getName() == "7" then
            local direction = 1
            if i == 12 then direction = 0 end
            handleNano(cardPositions[i], direction)
        end
    end
end

-- Handles custom distributions for specific missions
function handleCustomDistribution(distributionType)
    if distributionType == "mission29" then
        -- Mission 29: Custom number card distribution
        local numberCardBag = searchGlobalBag({"Numbers"})[1]
        local numberCards = numberCardBag.getObjects()
        shuffleInPlace(numberCards)
        local ix = 1
        for i = 1, playerNum do
            local isBlueGreen = 1
            if playerColors[i] == "Blue" or playerColors[i] == "Green" then
                isBlueGreen = -1
            end
            local cardCount = 2
            if i == playerNum then cardCount = 3 end
            for j = 1, cardCount do
                generateWithStandardProps(numberCardBag, {
                    characterPositions[playerColors[i]][1] + (7 * isBlueGreen),
                    characterPositions[playerColors[i]][2],
                    characterPositions[playerColors[i]][3]
                }, {0.00, characterRotations[playerColors[i]][2], 0.00}, false, true, true, numberCards[ix].guid)
                ix = ix + 1
            end
        end
    elseif distributionType == "mission65" then
        -- Mission 65: Custom number card distribution
        local numberCardBag = searchGlobalBag({"Numbers"})[1]
        local numberCards = numberCardBag.getObjects()
        shuffleInPlace(numberCards)
        local isBlueGreen = 1
        local ix = 1
        for i = 1, playerNum do
            if playerColors[i] == "Blue" or playerColors[i] == "Green" then
                isBlueGreen = -1
            end
            local cardCount = 3
            if playerNum == 3 then cardCount = 4
            elseif playerNum == 5 and i > 2 then cardCount = 2 end
            for j = 1, cardCount do
                generateWithStandardProps(numberCardBag, {
                    characterPositions[playerColors[i]][1] + (7 * isBlueGreen),
                    characterPositions[playerColors[i]][2] + (j * 0.2),
                    characterPositions[playerColors[i]][3]
                }, {0.00, characterRotations[playerColors[i]][2], 0.00}, false, true, true, numberCards[ix].guid)
                ix = ix + 1
            end
        end
    end
end

-- Handles sequence card setup for mission 36
function handleSequenceCard()
    local sequenceCardBag = searchGlobalBag({"Sequence"})[1]
    generateWithStandardProps(sequenceCardBag, playerHandPositions[playerColors[1]], {0.00, 180.00, 0.00}, false, true, false)
end

-- blueHighest is the highest value of a blue wire, and in terms of the card, yellowNum of yellowTotal and redNum of redTotal
function sortWiresAndEquipment(piles, blueHighest, yellowNum, yellowTotal, yellowHighest, redNum, redTotal, redHighest)
    sortEquipment(missionNum, yellowNum)
    sortAllWires(blueHighest, yellowNum, yellowTotal, yellowHighest, redNum, redTotal, redHighest, piles)
end

-- Sets up markers for revealed wires based on mission parameters
function setupMarkers(revealedWires, num, total, color)
    local markerBag = searchGlobalBag({"Marker", color})[1]
    local markerRotation = {}
    if num == total then
        markerRotation = {0.00, 180.00, 0.00}
    else
        markerRotation = {0.00, 180.00, 180.00}
    end
    local markerPositions = color == "Yellow" and yellowMarkerPositions or redMarkerPositions
    for _, wire in ipairs(revealedWires) do
        generateWithStandardProps(markerBag, markerPositions[math.floor(tonumber(wire.description)/10)], markerRotation, false, true, false)
    end
end

-- Handles special yellow wire distributions that place wires directly in player hands
function handleSpecialYellowWires(yellowConfig, piles)
    local yellowWireBag = searchGlobalBag({"Scripted", "Wires", "Yellow"})[1]
    local yellowWires = yellowWireBag.getObjects()
    shuffleInPlace(yellowWires)
    local yellowsRevealed = {}
    
    if yellowConfig.type == "playerBased" then
        -- Mission 41: playerNum wires (4 if playerNum is 5), starting from specific index
        local wireCount = yellowConfig.count == "playerNum" and playerNum or yellowConfig.count
        if wireCount == "playerNum" and playerNum == 5 then
            wireCount = 4
        end
        
        local startIndex = yellowConfig.startIndex
        if playerNum == 5 and startIndex == 1 then
            startIndex = 2 -- Start from player 2 if playerNum is 5
        end
        
        for i = 1, wireCount do
            local pileIndex = startIndex + i - 1
            if pileIndex <= #piles then
                table.insert(piles[pileIndex], yellowWires[i])
                table.sort(piles[pileIndex], function(a, b) return tonumber(a.description) < tonumber(b.description) end)
                table.insert(yellowsRevealed, yellowWires[i])
            end
        end
        
    elseif yellowConfig.type == "sequential" then
        -- Mission 48: 3 wires sequentially, skipping double hands in 3-player games
        local wireCount = yellowConfig.count or 3
        local playerIndex = yellowConfig.startIndex or 1
        
        for i = 1, wireCount do
            if playerIndex <= #piles then
                table.insert(piles[playerIndex], yellowWires[i])
                table.sort(piles[playerIndex], function(a, b) return tonumber(a.description) < tonumber(b.description) end)
                table.insert(yellowsRevealed, yellowWires[i])
                playerIndex = playerIndex + 1
                
                -- Skip double hand players in 3-player games
                if yellowConfig.skipDoubleHands and playerNum == 3 and playerIndex <= playerNum then
                    if (playerColors[playerIndex] == "Blue" and contains(doubleHandColors, "Blue"))
                    or (playerColors[playerIndex] == "Green" and contains(doubleHandColors, "Green")) then
                        playerIndex = playerIndex + 1
                    end
                end
            end
        end
        
    elseif yellowConfig.type == "perPlayer" then
        -- Custom mission -2: Multiple wires per player
        local wiresPerPlayer = yellowConfig.count or 2
        
        for i = 1, playerNum do
            for j = 1, wiresPerPlayer do
                table.insert(piles[i], yellowWires[(i * wiresPerPlayer - wiresPerPlayer) + j])
                table.sort(piles[i], function(a, b) return tonumber(a.description) < tonumber(b.description) end)
                table.insert(yellowsRevealed, yellowWires[(i * wiresPerPlayer - wiresPerPlayer) + j])
            end
        end
    end
    
    local yellowNum = #yellowsRevealed
    setupMarkers(yellowsRevealed, yellowNum, yellowNum, "Yellow")
end

allWires = {}

-- Sorts and reveals wires based on mission parameters and wire counts
function sortAllWires(blueHighest, yellowNum, yellowTotal, yellowHighest, redNum, redTotal, redHighest, piles)
    handCount = playerNum == 5 and 5 or 4

    for i = 1, handCount do
        table.insert(piles, {})
    end

    -- Check for special yellow wire distribution
    local config = getMissionConfig(missionNum)
    if config and config.yellowWires then
        handleSpecialYellowWires(config.yellowWires, piles)
    end

    -- Get mission-specific nano wire counts
    local nanoWireCounts
    local nanoConfig = getSpecialRuleConfig(missionNum, "nanoWires")
    if nanoConfig and nanoConfig.wireCounts then
        -- Try to get mission-specific counts first
        if nanoConfig.wireCounts[missionNum] then
            nanoWireCounts = nanoConfig.wireCounts[missionNum]
        elseif nanoConfig.wireCounts.default then
            -- Fall back to default if no mission-specific counts
            nanoWireCounts = nanoConfig.wireCounts.default
        end
    end
    
    -- Sort blue wires
    local blueWireBag = searchGlobalBag({"Blue", "Scripted", "Wires"})[1]
    local blueWires = {}
    for _, wire in ipairs(blueWireBag.getObjects()) do
        if tonumber(wire.description) <= blueHighest * 10 then
            table.insert(blueWires, wire)
        end
    end

    -- Sort yellow wires
    local yellowWires = {}
    if yellowNum > 0 then
        local yellowWireBag = searchGlobalBag({"Scripted", "Wires", "Yellow"})[1]
        local allYellowWires = {}
        for _, wire in ipairs(yellowWireBag.getObjects()) do
            if missionNum == 46 then
                local wireDesc = wire.description
                if wireDesc == "051" or wireDesc == "061" or wireDesc == "071" or wireDesc == "081" then
                    table.insert(allYellowWires, wire)
                end
            elseif tonumber(wire.description) <= yellowHighest * 10 then
                table.insert(allYellowWires, wire)
            end
        end
        shuffleInPlace(allYellowWires)
        yellowsRevealed = {}
        for i = 1, yellowTotal do
            table.insert(yellowsRevealed, allYellowWires[i])
        end
        for i = 1, yellowNum do
            table.insert(yellowWires, yellowsRevealed[i])
        end
        setupMarkers(yellowsRevealed, yellowNum, yellowTotal, "Yellow")
    end

    -- Sort red wires
    local redWires = {}
    if redNum > 0 then
        local redWireBag = searchGlobalBag({"Red", "Scripted", "Wires"})[1]
        local allRedWires = {}
        local redsRevealed = {}
        for _, wire in ipairs(redWireBag.getObjects()) do
            if tonumber(wire.description) <= redHighest * 10 then
                table.insert(allRedWires, wire)
            end
        end
        shuffleInPlace(allRedWires)
        redsRevealed = {}
        for i = 1, redTotal do
            table.insert(redsRevealed, allRedWires[i])
        end
        for i = 1, redNum do
            table.insert(redWires, redsRevealed[i])
        end
        setupMarkers(redsRevealed, redNum, redTotal, "Red")
    end

    allWires = {}
    for _, wire in ipairs(blueWires) do
        table.insert(allWires, wire)
    end
    for _, wire in ipairs(yellowWires) do
        table.insert(allWires, wire)
    end
    for _, wire in ipairs(redWires) do
        table.insert(allWires, wire)
    end
    shuffleInPlace(allWires)
    
    for i, wire in ipairs(allWires) do
        pileIx = ((i + handCount - 1) % handCount) + 1
        table.insert(piles[pileIx], wire)
    end
end

function dealWiresToHands(missionNum, piles)
    -- Handle wire hand count limitation before sorting piles
    local config = getMissionConfig(missionNum)
    local wireHandCount = config and config.wireHandCount
    local nanoConfig = getSpecialRuleConfig(missionNum, "nanoWires")
    local excessWires = {}  -- Store wires that exceed the hand count limit
    
    if wireHandCount then
        for num, pile in ipairs(piles) do
            if #pile > wireHandCount then
                -- Move excess wires to the excess pile
                for j = wireHandCount + 1, #pile do
                    table.insert(excessWires, pile[j])
                end
                -- Remove excess wires from the pile
                for j = #pile, wireHandCount + 1, -1 do
                    table.remove(pile, j)
                end
            end
        end
    end

    local nanoWireCounts
    if nanoConfig then
        if nanoConfig.wireCounts then
            -- Try to get mission-specific counts first
            if nanoConfig.wireCounts[missionNum] then
                nanoWireCounts = nanoConfig.wireCounts[missionNum]
            elseif nanoConfig.wireCounts.default then
                -- Fall back to default if no mission-specific counts
                nanoWireCounts = nanoConfig.wireCounts.default
            end
        end
        wireCountRemaining = nanoWireCounts[playerNum]
        for i = 1, nanoWireCounts[playerNum] do
            -- Find pile with highest count, with ties broken by choosing the latest in the table
            pileIx = 1
            local maxCount = #piles[1]
            for j = 2, #piles do
                if #piles[j] >= maxCount then
                    maxCount = #piles[j]
                    pileIx = j
                end
            end
            table.insert(excessWires, piles[pileIx][#piles[pileIx]])
            table.remove(piles[pileIx], #piles[pileIx])
        end
    end
    
    for num, pile in ipairs(piles) do
        local sortingRule = getSortingOverride(missionNum)
        
        if sortingRule == "specialLastWire" then
            -- Missions 20, 35, 56: Special last wire handling
            counter = 0
            wire = table.remove(pile)
            -- Mission 35: Only multiples of 10 can be the last wire
            while missionNum == 35 and tonumber(wire.description) % 10 ~= 0 do
                table.insert(pile, wire)
                counter = counter + 1
                wire = table.remove(pile, #pile - counter)
            end
            table.sort(pile, function(a, b) return tonumber(a.description) < tonumber(b.description) end)
            table.insert(pile, wire)
        elseif sortingRule and sortingRule.player and sortingRule.player == num and sortingRule.rule == "lastWireOnTop" then
            -- Mission 38: Special case for single wire - last wire stays on top
            wire = table.remove(pile)
            table.sort(pile, function(a, b) return tonumber(a.description) < tonumber(b.description) end)
            table.insert(pile, wire)
        elseif sortingRule == "allPlayersLastWireOuter" then
            -- Mission 56: All players have single wire - last wire stays on top
            wire = table.remove(pile)
            table.sort(pile, function(a, b) return tonumber(a.description) < tonumber(b.description) end)
            table.insert(pile, wire)
        elseif sortingRule == "lastTwoWiresOnTop" then
            -- Mission 64: Last two wires stay on top after sorting
            wire1 = table.remove(pile)
            wire2 = table.remove(pile)
            table.sort(pile, function(a, b) return tonumber(a.description) < tonumber(b.description) end)
            table.insert(pile, wire1)
            table.insert(pile, wire2)
        elseif sortingRule == "shuffleCaptain" then
            -- Custom mission -1: Special captain shuffling
            if num ~= 1 then
                table.sort(pile, function(a, b) return tonumber(a.description) < tonumber(b.description) end)
            end
        else
            -- Standard sorting
            table.sort(pile, function(a, b) return tonumber(a.description) < tonumber(b.description) end)
        end
    end
    
    -- Place excess wires in a pile beside the board if wireHandCount is configured
    if #excessWires > 0 then
        for i, wire in ipairs(excessWires) do
            generateWireWithStandardProps(wire, {-24.35, 1.56 + (i * 0.1), 4.60}, {0.00, 180.00, 180.00})
        end
    end

    noMoreDouble = false
    handsDoubled = 0
    for i = 1, playerNum do
        wirePositions0 = wireHandPositions0[playerColors[i]]
        outerWirePositions0 = wireOuterPositions0[playerColors[i]]
        tokenPositions0 = tokenHandPositions0[playerColors[i]]
        
        for j = 1, #piles[i + handsDoubled] do
            local outerWireRule = getSpecialRuleConfig(missionNum, "outerWires")
            local sortingRule = getSortingOverride(missionNum)
            
            local genWire
            if outerWireRule then
                -- Check if this player should have outer wire positioning
                local shouldUseOuter = false
                if outerWireRule.players == "all" then
                    shouldUseOuter = true
                elseif type(outerWireRule.players) == "table" and contains(outerWireRule.players, i) then
                    shouldUseOuter = true
                end
                
                if shouldUseOuter then
                    if outerWireRule.wirePosition == "last" and j == #piles[i + handsDoubled] then
                        genWire = generateWireWithStandardProps(piles[i + handsDoubled][j], outerWirePositions0[1], wireRotations[playerColors[i]])
                        genWire.addTag("Outer")
                    elseif outerWireRule.wirePosition == "lastTwo" then
                        if j == #piles[i + handsDoubled] then
                            genWire = generateWireWithStandardProps(piles[i + handsDoubled][j], outerWirePositions0[1], wireRotations[playerColors[i]])
                            genWire.addTag("Outer")
                        elseif j == #piles[i + handsDoubled] - 1 then
                            genWire = generateWireWithStandardProps(piles[i + handsDoubled][j], outerWirePositions0[2], wireRotations[playerColors[i]])
                            genWire.addTag("Outer")
                        else
                            genWire = generateWireWithStandardProps(piles[i + handsDoubled][j], wirePositions0[j], wireRotations[playerColors[i]])
                        end
                    else
                        genWire = generateWireWithStandardProps(piles[i + handsDoubled][j], wirePositions0[j], wireRotations[playerColors[i]])
                    end
                else
                    genWire = generateWireWithStandardProps(piles[i + handsDoubled][j], wirePositions0[j], wireRotations[playerColors[i]])
                end
            else
                genWire = generateWireWithStandardProps(piles[i + handsDoubled][j], wirePositions0[j], wireRotations[playerColors[i]])
            end

            genWire.flip()

            -- Handle X token placement for special last wire missions
            if sortingRule == "specialLastWire" and j == #piles[i + handsDoubled] then
                xTokenBag = searchGlobalBag({"XTokens"})[1]
                generateWithStandardProps(xTokenBag, tokenPositions0[j], tokenHandRotations[playerColors[i]], false, true, false)
            end
        end
        if (playerColors[i] == "Blue" and contains(doubleHandColors, "Blue"))
        or (playerColors[i] == "Green" and contains(doubleHandColors, "Green"))
        and noMoreDouble == false then
            wirePositions1 = wireHandPositions1[playerColors[i]]
            outerWirePositions1 = wireOuterPositions1[playerColors[i]]
            tokenPositions1 = tokenHandPositions1[playerColors[i]]
            handsDoubled = handsDoubled + 1
            
            for j = 1, #piles[i + handsDoubled] do
                local outerWireRule = getSpecialRuleConfig(missionNum, "outerWires")
                local sortingRule = getSortingOverride(missionNum)
                
                if outerWireRule then
                    -- Check if this player should have outer wire positioning
                    local shouldUseOuter = false
                    if outerWireRule.players == "all" then
                        shouldUseOuter = true
                    elseif type(outerWireRule.players) == "table" and contains(outerWireRule.players, i) then
                        shouldUseOuter = true
                    end
                    
                    if shouldUseOuter then
                        if outerWireRule.wirePosition == "last" and j == #piles[i + handsDoubled] then
                            genWire = generateWireWithStandardProps(piles[i + handsDoubled][j], outerWirePositions1[1], wireRotations[playerColors[i]])
                            genWire.addTag("Outer")
                        elseif outerWireRule.wirePosition == "lastTwo" then
                            if j == #piles[i + handsDoubled] then
                                genWire = generateWireWithStandardProps(piles[i + handsDoubled][j], outerWirePositions1[1], wireRotations[playerColors[i]])
                                genWire.addTag("Outer")
                            elseif j == #piles[i + handsDoubled] - 1 then
                                genWire = generateWireWithStandardProps(piles[i + handsDoubled][j], outerWirePositions1[2], wireRotations[playerColors[i]])
                                genWire.addTag("Outer")
                            else
                                genWire = generateWireWithStandardProps(piles[i + handsDoubled][j], wirePositions1[j], wireRotations[playerColors[i]])
                            end
                        else
                            genWire = generateWireWithStandardProps(piles[i + handsDoubled][j], wirePositions1[j], wireRotations[playerColors[i]])
                        end
                    else
                        genWire = generateWireWithStandardProps(piles[i + handsDoubled][j], wirePositions1[j], wireRotations[playerColors[i]])
                    end
                else
                    genWire = generateWireWithStandardProps(piles[i + handsDoubled][j], wirePositions1[j], wireRotations[playerColors[i]])
                end
                genWire.flip()
                
                -- Handle X token placement for special last wire missions
                if sortingRule == "specialLastWire" and j == #piles[i + handsDoubled] then
                    xTokenBag = searchGlobalBag({"XTokens"})[1]
                    generateWithStandardProps(xTokenBag, tokenPositions1[j], tokenHandRotations[playerColors[i]], false, true, false)
                end
            end
            if playerNum == 3 then
                noMoreDouble = true
            end
        end
    end
end

function sortEquipment(missionNum, yellowNum)
    -- Check if this is a custom mission that should exclude all equipment
    local missionConfig = getMissionConfig(missionNum)
    if missionConfig and (missionConfig.includePack1Equipment ~= nil or missionConfig.includePack5Equipment ~= nil) then
        -- For custom missions with pack configuration, check if all equipment should be excluded
        if not missionConfig.includePack1Equipment and not missionConfig.includePack5Equipment then
            return -- No equipment should be set up
        end
    elseif (missionNum < 3 and missionNum > 0) or missionNum == 39 then 
        -- Legacy hardcoded missions that don't use equipment
        return 
    end
    
    equipmentCardBag0 = searchGlobalBag({"Equipment", "Pack0"})[1]
    equipmentCardBag1 = searchGlobalBag({"Equipment", "Pack1"})[1]
    equipmentCardBag5 = searchGlobalBag({"Equipment", "Pack5"})[1]
    equipmentCards = equipmentCardBag0.getObjects()
    for _, card in ipairs(equipmentCardBag1.getObjects()) do
        table.insert(equipmentCards, card)
    end
    for _, card in ipairs(equipmentCardBag5.getObjects()) do
        table.insert(equipmentCards, card)
    end
    shuffleInPlace(equipmentCards)
    local equipmentSpecial = getEquipmentSpecial(missionNum)
    
    -- Set default values
    equipRot = {0.00, 180.00, 0.00}
    equipNum = playerNum
    equipPos = equipmentPositions
    
    -- Apply equipment special configurations
    if equipmentSpecial then
        -- Override rotation if specified
        if equipmentSpecial.rotation then
            equipRot = equipmentSpecial.rotation
        end
        
        -- Handle specific equipment placement (like Mission 18 General Radar)
        if equipmentSpecial.specificEquipment then
            -- Array format - allows multiple instances of same equipment
            for _, equipmentConfig in ipairs(equipmentSpecial.specificEquipment) do
                local targetCard = nil
                for _, card in ipairs(equipmentCards) do
                    if card.name == equipmentConfig.name then
                        targetCard = card
                        break
                    end
                end
                if targetCard then
                    if equipmentConfigs[targetCard.name].pack == 0 then
                        generateWithStandardProps(equipmentCardBag0, equipmentConfig.position, equipmentConfig.rotation or equipRot, false, true, false, targetCard.guid)
                    elseif equipmentConfigs[targetCard.name].pack == 1 then
                        generateWithStandardProps(equipmentCardBag1, equipmentConfig.position, equipmentConfig.rotation or equipRot, false, true, false, targetCard.guid)
                    elseif equipmentConfigs[targetCard.name].pack == 5 then
                        generateWithStandardProps(equipmentCardBag5, equipmentConfig.position, equipmentConfig.rotation or equipRot, false, true, false, targetCard.guid)
                    end
                end
            end
            
            -- Early return if specified (Mission 18 only places General Radar)
            if equipmentSpecial.earlyReturn then
                return
            end
        end
        
        -- Override equipment count if specified
        if equipmentSpecial.count then
            equipNum = equipmentSpecial.count
        end
        
        -- Use special layout if specified
        if equipmentSpecial.layout then
            local layout = getPositionLayout("equipmentCards", equipNum, missionNum)
            if layout then
                -- Handle nested position structure (like mission23)
                if layout.positions then
                    equipPos = layout.positions
                else
                    equipPos = layout
                end
            end
        end
    end
    
    -- Continue with standard equipment distribution logic
    equipmentCardBag0 = searchGlobalBag({"Equipment", "Pack0"})[1]
    equipmentCardBag1 = searchGlobalBag({"Equipment", "Pack1"})[1]
    equipmentCardBag5 = searchGlobalBag({"Equipment", "Pack5"})[1]
    equipmentCards = equipmentCardBag0.getObjects()
    spareEquipment = {}
    for _, card in ipairs(equipmentCardBag1.getObjects()) do
        table.insert(equipmentCards, card)
    end
    for _, card in ipairs(equipmentCardBag5.getObjects()) do
        table.insert(equipmentCards, card)
    end
    shuffleInPlace(equipmentCards)
    local equipmentSpecial = getEquipmentSpecial(missionNum)
    local equipmentToDeal = {}
    local destroyed = 0
    for num, card in ipairs(equipmentCards) do
        if not shouldExcludeEquipment(card, missionNum, yellowNum) then
            if num - destroyed <= equipNum then
                table.insert(equipmentToDeal, card)
            else
                -- Store spare equipment for later use
                table.insert(spareEquipment, card)
            end
        else
            destroyed = destroyed + 1
        end
    end

    -- Apply sorting unless Mission 15 or equipment special configuration specifies no sorting
    local shouldSort = #equipmentToDeal > 1
    if equipmentSpecial then
        -- Don't sort if rotation is flipped (like Mission 15) or explicitly disabled
        if equipmentSpecial.rotation and equipmentSpecial.rotation[3] == 180.00 then
            shouldSort = false
        elseif equipmentSpecial.noSorting then
            shouldSort = false
        end
    end
    
    if shouldSort then
        table.sort(equipmentToDeal, function(a, b) return tonumber(a.description) < tonumber(b.description) end)
    end
    
    for i = 1, equipNum do
        if equipmentToDeal[i] and equipPos[i] then
            if equipmentToDeal[i].description == "0" then
                for j = 1, 2 do
                    if equipmentConfigs[spareEquipment[j].name].pack == 0 then
                        generateWithStandardProps(equipmentCardBag0, {24.35, 1.50, 5.49}, {0.00, 180.00, 180.00}, false, true, false, spareEquipment[j].guid)
                    elseif equipmentConfigs[spareEquipment[j].name].pack == 1 then
                        generateWithStandardProps(equipmentCardBag1, {24.35, 1.50, 5.49}, {0.00, 180.00, 180.00}, false, true, false, spareEquipment[j].guid)
                    elseif equipmentConfigs[spareEquipment[j].name].pack == 5 then
                        generateWithStandardProps(equipmentCardBag5, {24.35, 1.50, 5.49}, {0.00, 180.00, 180.00}, false, true, false, spareEquipment[j].guid)
                    end
                end
            end
            if equipmentConfigs[equipmentToDeal[i].name].pack == 0 then
                generateWithStandardProps(equipmentCardBag0, equipPos[i], equipRot, false, true, false, equipmentToDeal[i].guid)
            elseif equipmentConfigs[equipmentToDeal[i].name].pack == 1 then
                generateWithStandardProps(equipmentCardBag1, equipPos[i], equipRot, false, true, false, equipmentToDeal[i].guid)
            elseif equipmentConfigs[equipmentToDeal[i].name].pack == 5 then
                generateWithStandardProps(equipmentCardBag5, equipPos[i], equipRot, false, true, false, equipmentToDeal[i].guid)
            end
        end
    end
end

function moveTokens(missionNum)
    local config = getMissionConfig(missionNum)

    infoTokenPositions = { -- These are the standard positions of the info tokens.
        {-10.65, 1.81, -5.20},
        {-9.13, 1.81, -5.20},
        {-7.61, 1.81, -5.20},
        {-6.09, 1.81, -5.20},
        {-4.57, 1.81, -5.20},
        {-3.04, 1.81, -5.20},
        {-10.65, 1.81, -7.65},
        {-9.13, 1.81, -7.65},
        {-7.61, 1.81, -7.65},
        {-6.09, 1.81, -7.65},
        {-4.57, 1.81, -7.65},
        {-3.04, 1.81, -7.65},
        {-6.85, 1.81, -10.10}
    }
    
    -- Handle specific token types based on mission configuration
    if config and config.specialTokens then
        local specialTokens = config.specialTokens
        for _, tokenConfig in ipairs(specialTokens.tokens) do
            if specialTokens.count == 0 then
                cloneAndPositionTokenBags({"Destroy", tokenConfig.name}, tokenConfig.position, true)
            else
                cloneAndPositionTokens({"Destroy", tokenConfig.name}, tokenConfig.position, specialTokens.count)
            end
        end
    end
    
    -- Handle regular info tokens unless excluded by config
    local shouldExcludeInfoTokens = config and config.excludeInfoTokens
    if not shouldExcludeInfoTokens then
        local infoTokens = table.shallow_copy(searchGlobalBag({"InfoTokens"}))
        if infoTokens and #infoTokens > 0 then
            table.sort(infoTokens,
            function(a, b)
                local ret
                if b.getName() == "Yellow Tokens" and a.getName() ~= "Yellow Tokens" then
                    ret = true
                elseif a.getName() == "Yellow Tokens" and b.getName() ~= "Yellow Tokens" then
                    ret = false
                else
                    ret = tonumber(string.sub(a.getName(), 1, 2)) < tonumber(string.sub(b.getName(), 1, 2))
                end
                return ret
            end)

            if config.wires[3] == 0 and config.yellowWires == nil then
                table.remove(infoTokens, 13)
            end

            -- Determine token limit based on mission type and configuration
            local needsExtendedTokens = false

            -- Check if this mission needs extended info tokens (Pack 5 content)
            if missionNum >= 55 then -- Regular Pack 5 missions
                needsExtendedTokens = true
            elseif config and config.includePack5Equipment then -- Custom missions with Pack 5 equipment
                table.insert(infoTokens, searchGlobalBag({"Destroy", "x1Tokens"})[1])
                needsExtendedTokens = true
            end
            
            -- Place info tokens based on mission requirements
            for tokenNumber, tokenBag in ipairs(infoTokens) do
                local shouldPlaceToken = false
                if needsExtendedTokens then
                    -- Pack 5 missions or custom missions with Pack 5: Place all tokens
                    shouldPlaceToken = true
                    if #infoTokens > 13 then
                        infoTokenPositions = {
                            {-10.65, 1.81, -5.20},
                            {-9.13, 1.81, -5.20},
                            {-7.61, 1.81, -5.20},
                            {-6.09, 1.81, -5.20},
                            {-4.57, 1.81, -5.20},
                            {-3.04, 1.81, -5.20},
                            {-10.65, 1.81, -7.65},
                            {-9.13, 1.81, -7.65},
                            {-7.61, 1.81, -7.65},
                            {-6.09, 1.81, -7.65},
                            {-4.57, 1.81, -7.65},
                            {-3.04, 1.81, -7.65},
                            {-7.61, 1.81, -10.10},
                            {-6.09, 1.81, -10.10}
                        }
                    end
                else
                    -- Regular missions: Place tokens up to position 13
                    shouldPlaceToken = (tokenNumber <= 13)
                end
                if shouldPlaceToken then
                    -- Ensure we have a valid position for this token
                    if infoTokenPositions[tokenNumber] then
                        -- Execute it twice as there are two tokens of each type by default
                        generateWithStandardProps(tokenBag, infoTokenPositions[tokenNumber], {0, 180, 0}, false, true, false)
                        generateWithStandardProps(tokenBag, {infoTokenPositions[tokenNumber][1], infoTokenPositions[tokenNumber][2] + 0.2, infoTokenPositions[tokenNumber][3]}, {0, 180, 0}, false, true, false)
                    end
                end
            end
        end
    elseif missionNum >= 55 or (config and config.includePack5Equipment) then
        local tokenBag = searchGlobalBag({"Destroy", "x1Tokens"})[1]
        generateWithStandardProps(tokenBag, {-6.85, 1.81, -10.10}, {0, 180, 0}, false, true, false)
        generateWithStandardProps(tokenBag, {-6.85, 2.01, -10.10}, {0, 180, 0}, false, true, false)
    end
    
    -- Handle equals/not equals tokens based on configuration
    local config = getMissionConfig(missionNum)
    local shouldExcludeEquals = config and config.excludeTokens and (
        contains(config.excludeTokens, "Equals") or contains(config.excludeTokens, "NotEquals")
    )
    
    if not shouldExcludeEquals then
        local notEqualsBag = searchGlobalBag({"NotEquals"})[1]
        if notEqualsBag then
            generateWithStandardProps(notEqualsBag, {-9.86, 1.61, -10.10}, {0.00, 180.00, 0.00}, false, true, false)
        end

        local equalsBag = searchGlobalBag({"Equals"})[1]
        if equalsBag then
            generateWithStandardProps(equalsBag, {-3.81, 1.61, -10.10}, {0.00, 180.00, 0.00}, false, true, false)
        end
    end
end

function spawnMissionCard(missionNum)
    local config = getMissionConfig(missionNum) -- Ensure mission config is loaded
    
    local folderName = "Missions"
    if missionNum < 1 then
        folderName = "Custom Missions"
    end

    -- Determine URLs based on mission type and config
    local params
    if config and config.missionCardFrontUrl and config.missionCardBackUrl then
        -- Mission 0 with custom URLs
        params = {
            face = config.missionCardFrontUrl,
            back = config.missionCardBackUrl
        }
    else
        -- Default URL pattern or fallback
        if missionNum == 0 and (not config.missionCardFrontUrl or not config.missionCardBackUrl) then
            printToAll("Error: No mission card found for mission " .. missionNum .. ". Using default card.", {1, 0, 0})
            params = {
                face = "https://files.timwi.de/Tabletop Simulator/Bomb Busters/Missions/Mission 1 Front.png",
                back = "https://files.timwi.de/Tabletop Simulator/Bomb Busters/Missions/Mission 1 Back.png"
            }
        else
            -- Standard URL pattern
            params = {
                face = "https://files.timwi.de/Tabletop Simulator/Bomb Busters/" .. folderName .. "/Mission " .. missionNum .. " Front.png",
                back = "https://files.timwi.de/Tabletop Simulator/Bomb Busters/" .. folderName .. "/Mission " .. missionNum .. " Back.png"
            }
        end
    end
    missionCard = spawnObjectJSON({json = [[{
        "GUID": "b7f94a",
        "Name": "CardCustom",
        "Transform": {
            "posX": -16.77,
            "posY": 1.52,
            "posZ": -10.55,
            "rotX": 0.00,
            "rotY": 180.00,
            "rotZ": 180.00,
            "scaleX": 3.36110425,
            "scaleY": 1.0,
            "scaleZ": 3.39677835
        },
        "Nickname": "",
        "Description": "",
        "GMNotes": "",
        "AltLookAngle": {
            "x": 0.0,
            "y": 0.0,
            "z": 0.0
        },
        "ColorDiffuse": {
            "r": 0.713235259,
            "g": 0.713235259,
            "b": 0.713235259
        },
        "Tags": [
            "Mission",
            "Destroy"
        ],
        "LayoutGroupSortIndex": 0,
        "Value": 0,
        "Locked": false,
        "Grid": true,
        "Snap": true,
        "IgnoreFoW": false,
        "MeasureMovement": false,
        "DragSelectable": true,
        "Autoraise": true,
        "Sticky": true,
        "Tooltip": true,
        "GridProjection": false,
        "HideWhenFaceDown": true,
        "Hands": true,
        "CardID": 162700,
        "SidewaysCard": false,
        "CustomDeck": {
            "1627": {
            "FaceURL": "https://files.timwi.de/Tabletop Simulator/Bomb Busters/Missions/Mission 1 Front.png",
            "BackURL": "https://files.timwi.de/Tabletop Simulator/Bomb Busters/Missions/Mission 1 Back.png",
            "NumWidth": 1,
            "NumHeight": 1,
            "BackIsHidden": true,
            "UniqueBack": false,
            "Type": 0
            }
        },
        "LuaScript": "",
        "LuaScriptState": "",
        "XmlUI": ""
    }]]})
    
    missionCard.setName(missionNum)
    missionCard.setCustomObject(params)
    missionCard.reload()
end

function adjustDial(missionNum, position)
    dial = getObjectsWithTag("Dial")[1]
    dial.setPosition({14.78, 1.61, -8.51})
    if missionNum == 51 then
        dial.setRotationSmooth({0.00, 0.00, 0.00})
        currentDialNum = 6
    else
        if missionNum == 41 or missionNum == 55 or missionNum == 60 or missionNum == 62 then
            position = 1
        end
        dial.setRotationSmooth(dialRotations[position])
        currentDialNum = position
    end
end

-- Moves the detonator dial clockwise (decreases counter)
function moveDialClockwise(self, playerColor)
    currentDialNum = currentDialNum - 1
    if currentDialNum < 0 then
        currentDialNum = 0
        return
    end
    moveDial(currentDialNum, playerColor, "clockwise")
end

-- Moves the detonator dial anti-clockwise (increases counter)
function moveDialAntiClockwise(self, playerColor)
    currentDialNum = currentDialNum + 1
    if currentDialNum > 5 then
        currentDialNum = 5
        return
    end
    moveDial(currentDialNum, playerColor, "anti-clockwise")
end

function setupTokenBags()
    local randomBag = searchGlobalBag({"Destroy", "Random"}, true)[1]
    randomBag.setPosition({1.48, 1.32, -6.23})
    randomBag.setRotation({0.00, 0.00, 0.00})
    randomBag.locked = true

    local validationBag = searchGlobalBag({"Destroy", "Scripted", "Validation"}, true)[1]
    validationBag.setPosition({4.87, 1.49, -6.27})
    validationBag.setRotation({0.00, 0.00, 0.00})
    validationBag.locked = true

    local attentionBag = searchGlobalBag({"Attention", "Destroy", "Scripted"}, true)[1]
    attentionBag.setPosition({4.82, 1.49, -9.26})
    attentionBag.setRotation({0.00, 0.00, 0.00})
    attentionBag.locked = true

    local warningBag = searchGlobalBag({"Destroy", "Scripted", "Warning"}, true)[1]
    warningBag.setPosition({1.46, 1.49, -9.26})
    warningBag.setRotation({0.00, 0.00, 0.00})
    warningBag.locked = true
end

------------------------
--- USEFUL FUNCTIONS ---
------------------------

function shuffle(t)
    local s = {}
    for i = 1, #t do s[i] = t[i] end
    for i = #t, 2, -1 do
        local j = math.random(i)
        s[i], s[j] = s[j], s[i]
    end
    return s
end

function shuffleInPlace(t)
    for i = #t, 2, -1 do
        local j = math.random(i)
        t[i], t[j] = t[j], t[i]
    end
end

function contains(list, x)
    for _, v in pairs(list) do
        if v == x then return true end
    end
    return false
end

function wrap( t, l )
    for i = 1, l do
        table.insert( t, 1, t[#t] )
        table.remove( t, #t )
    end
end

function table.shallow_copy(t)
  local t2 = {}
  for k,v in pairs(t) do
    t2[k] = v
  end
  return t2
end