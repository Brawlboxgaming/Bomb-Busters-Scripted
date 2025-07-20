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

-- Mission card final position and rotation on table
missionPosition = {-16.77, 1.52, -10.55}
missionRotation = {0.00, 180.00, 180.00}

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
    {-16.60, 1.51, -0.57},
    {-13.29, 1.51, -0.57},
    {-9.98, 1.51, -0.57},
    {-6.65, 1.51, -0.57},
    {-3.33, 1.51, -0.57},
    {-0.02, 1.51, -0.57},
    {3.30, 1.51, -0.57},
    {6.61, 1.51, -0.57},
    {9.93, 1.51, -0.57},
    {13.39, 1.51, -0.57},
    {16.51, 1.51, -0.57}
}

redMarkerPositions = { -- These are the positions on the board for the red markers used to indicate the red wire locations.
    {-16.31, 1.51, -1.84},
    {-12.97, 1.51, -1.84},
    {-9.65, 1.51, -1.84},
    {-6.38, 1.51, -1.85},
    {-3.07, 1.51, -1.87},
    {0.28, 1.51, -1.85},
    {3.59, 1.51, -1.85},
    {6.91, 1.51, -1.89},
    {10.23, 1.51, -1.88},
    {13.65, 1.51, -1.88},
    {16.84, 1.51, -1.87}
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

-----------------
--- UTILITIES ---
-----------------

-- Takes an object from a deck and prepares it with standard properties
function takeAndPrepareWire(deck, position, rotation)
    local wire = deck.takeObject({position=position, rotation=rotation, smooth=false})
    wire.locked = false
    wire.addTag("Destroy")
    return wire
end

-- Moves the detonator dial and announces the movement
function moveDial(newDialNum, playerColor, direction)
    local dial = getObjectsWithTag("Dial")[1]
    dial.setPosition({14.78, 1.61, -8.51})
    dial.setRotationSmooth(dialRotations[newDialNum])
    
    local zeroText = ""
    if newDialNum == 0 then
        zeroText = " KABOOM!"
    end
    
    printToAll(string.format("%s has moved the dial %s to position %d.%s", playerColor, direction, newDialNum, zeroText))
end

-- Sets up spare equipment with position, rotation, and tag removal
function setupSpareEquipment(equipment, position, rotation)
    equipment.setPositionSmooth(position)
    equipment.setRotationSmooth(rotation)
    equipment.removeTag("Spare")
end

-- Clones and prepares a deck with standard properties
function cloneAndPrepareDeck(deckTags, position, rotation, shouldShuffle)
    local deck = getObjectsWithAllTags(deckTags)[1]
    local copy = deck.clone({position=position, rotation=rotation, smooth=false})
    copy.locked = false
    copy.addTag("Destroy")
    if shouldShuffle then
        copy.shuffle()
    end
    return copy
end

-- Clones token bags and positions them on the board
function cloneAndPositionTokens(tokenTag, position)
    local tokensBag = getObjectsWithTag(tokenTag)[1]
    local clone = tokensBag.clone({position=position, rotation={0.00, 180.00, 0.00}})
    clone.setPosition(position)
    clone.addTag("Destroy")
    return clone
end

-- Determines if equipment should be excluded based on mission and pack rules
function shouldExcludeEquipment(clone, missionNum, yellowNum)
    local desc = clone.getDescription()
    
    -- Pack-based exclusions
    if clone.hasTag("Pack1") and (missionNum < 9 or yellowNum == 0) then
        return true
    end
    if clone.hasTag("Pack5") and missionNum < 55 then
        return true
    end
    
    -- Mission-specific equipment exclusions
    local exclusions = {
        [3] = {"2", "11", "12"}, [10] = {"11"}, [20] = {"2"}, [26] = {"10"},
        [27] = {"7"}, [35] = {"2"}, [44] = {"10"}, [45] = {"10", "11"},
        [46] = {"7"}, [47] = {"10"}, [49] = {"10"}, [51] = {"10"},
        [52] = {"1", "12"}, [53] = {"6", "9"}, [54] = {"10"}, [57] = {"1010"},
        [58] = {"4", "7"}, [59] = {"10"}, [63] = {"10"}, [65] = {"10"}
    }
    
    if exclusions[missionNum] then
        for _, excludedDesc in ipairs(exclusions[missionNum]) do
            if desc == excludedDesc then
                return true
            end
        end
    end
    
    -- Special case for mission 11
    if missionNum == 11 then
        local destroyNumbers = getObjectsWithAllTags({"Numbers", "Destroy"})
        if #destroyNumbers > 0 and desc == destroyNumbers[1].getName() then
            return true
        end
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
    local bag = getObjectsWithTag("Validation")[1]
    for i = startNum, endNum do
        bag.takeObject({position=numberTokenPositions[i], rotation={0.00, 180.00, 0.00}})
    end
end

-- Positions cards smoothly and optionally sets rotations
function positionCards(cards, positions, rotations)
    for i = 1, #cards do
        cards[i].setPositionSmooth(positions[i])
        if rotations and rotations[i] then
            cards[i].setRotation(rotations[i])
        end
    end
end

-- Clones an object with standard properties (Destroy tag, unlocked)
function cloneWithStandardProps(object, position, rotation, shouldLock)
    local clone = object.clone({position=position, rotation=rotation})
    clone.addTag("Destroy")
    if shouldLock then
        clone.setPosition(position)
    end
    clone.locked = shouldLock or false
    return clone
end

-- Sets up sequence cards for missions with numbered sequences (side A or B)
function setupSequence(sequenceSide) -- 0 being side A and 1 being side B
    sequenceRotation = {0.00, 270.00, 0.00}
    if sequenceSide == 1 then
        sequenceRotation = {0.00, 270.00, 180.00}
    end
    numberCardPositions = {
        {-35.47, 1.50, -6.22},
        {-35.46, 1.50, 0.00},
        {-35.47, 1.50, 6.22}
    }
    numberCards = getObjectsWithTag("Numbers")[1]
    cardsToDeal = numberCards.clone({position={-82.10, 2.20, -24.63}})
    cardsToDeal.locked = false
    cardsToDeal.shuffle()
    for i = 1, 3 do
        number = cardsToDeal.takeObject({position=numberCardPositions[i], rotation={0.00, 90.00, 0.00}})
        number.locked = false
        number.addTag("Destroy")
        if i ~= 1 then
            bag = getObjectsWithTag("Warning")[1]
            token = bag.takeObject({position=numberTokenPositions[tonumber(number.getName())], rotation={0.00, 180.00, 0.00}})
            token.locked = false
        end
    end
    cardsToDeal.destruct()

    sourceSequenceCard = getObjectsWithTag("Sequence")[1]
    sequenceCard = sourceSequenceCard.clone({position={-44.19, 1.50, -6.22}, rotation=sequenceRotation})
    sequenceCard.locked = false
    sequenceCard.addTag("Destroy")
end

-- Sets up nano components with specified position and direction
function setupNano(startPos, direction) -- 0 is left and 1 is right, wires are sorted in sortWiresAndEquipment
    nanoRotation = {0.00, 0.00, 0.00}
    if direction == 1 then
        nanoRotation = {0.00, 180.00, 0.00}
    end
    nano = getObjectsWithTag("Nano")[1]
    clone = nano.clone({position = startPos, rotation = nanoRotation})
    clone.locked = false
    clone.addTag("Destroy")
end

-- Randomly distributes info tokens to players from a virtual bag
function chooseRandomInfo(includeYellow)
    virtualBag = {"1", "1", "2", "2", "3", "3", "4", "4", "5", "5", "6", "6", "7", "7", "8", "8", "9", "9", "10", "10", "11", "11", "12", "12", "Yellow", "Yellow"}
    for _, color in ipairs(playerColors) do
        randomToken = math.random(1, #virtualBag - 2 + (includeYellow and 2 or 0))
        printToAll(string.format("%s will take the %s token.", color, virtualBag[randomToken]))
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

-- Character card data for dynamic function generation
local characterCardSuffixes = {
    {name = "Double Detector", suffix = "DD"},
    {name = "General Radar", suffix = "GR"},
    {name = "Triple Detector", suffix = "TD"},
    {name = "Walkie-Talkies", suffix = "WT"},
    {name = "X or Y ray", suffix = "XYR"}
}

-- Generate character card wrapper functions dynamically
for _, card in ipairs(characterCardSuffixes) do
    _G["addToCharList" .. card.suffix] = function() addToCharList(card.name) end
    _G["removeFromCharList" .. card.suffix] = function() removeFromCharList(card.name) end
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
    playerNum = 5
    playerColors = {
        "Blue",
        "Green",
        "White",
        "Red",
        "Purple"}
    for num, color in ipairs(allPlayerColors) do
        for _, player in ipairs(players) do
            if player.color == color and player.seated then
                playerNum = playerNum + 1
                table.insert(playerColors, color)
                break
            end
        end
    end
    if playerNum < 2 then
        printToAll("Not enough players", {r=1,g=0,b=0})
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
    if missionNum < 1 then
        self.setValue(1)
        missionNum = 1
    elseif missionNum > 66 then
        self.setValue(66)
        missionNum = 66
    end

    -- Pack 5 missions (55+): Use extended info token positions for additional content
    if missionNum > 54 then
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
    doubleHandColors = {}
    sortPlayerColors(playerNum)
    moveMissionCard(missionNum)
    adjustDial(missionNum, playerNum)

    -- Tutorial missions (1-8): Flip rule cards to show tutorial information
    if missionNum < 9 then
        setRuleCardRotations({0.00, 270.00, 180.00}, {0.00, 270.00, 180.00}, {0.00, 270.00, 180.00})
    elseif missionNum < 31 then
        setRuleCardRotations({0.00, 270.00, 0.00}, {0.00, 270.00, 180.00}, {0.00, 270.00, 180.00})
    elseif missionNum < 55 then
        setRuleCardRotations({0.00, 270.00, 0.00}, {0.00, 270.00, 0.00}, {0.00, 270.00, 180.00})
    else
        setRuleCardRotations({0.00, 270.00, 0.00}, {0.00, 270.00, 0.00}, {0.00, 270.00, 0.00})
    end

    -- From mission 31 onwards, you can choose which character cards you would like as there are additional ones added.
    if missionNum > 30 then
        printToAll("----------------------------")
        printToAll("Please select which character cards you would like to use for this mission.")
        fontSize = 250
        addWidth = 600
        removeWidth = 1000
        addZPosition = -2.2
        removeZPosition = -2.7
        -- This check is needed because the X or Y ray is not available as personal equipment when setting up these missions.
        xyBanned = missionNum == 44 or missionNum == 45 or missionNum == 47 or missionNum == 49 or missionNum == 51 or missionNum == 54 or missionNum == 59 or missionNum == 63 or missionNum == 65
        cardPositions = {
            {-44.61, 1.50, -10.32},
            {-44.61, 1.50, -3.44},
            {-44.61, 1.50, 3.44},
            {-44.61, 1.50, 10.32},
        }
        buttonPositions = {
            1.73,
            0.58,
            -0.58,
            -1.73
        }
        if xyBanned == false then
            cardPositions = {
                {-44.61, 1.50, -13.76},
                {-44.61, 1.50, -6.88},
                {-44.61, 1.50, 0.00},
                {-44.61, 1.50, 6.88},
                {-44.61, 1.50, 13.76}
            }
            buttonPositions = {
                2.30,
                1.15,
                0.00,
                -1.15,
                -2.30
            }
        end
        pack0Characters = getObjectsWithAllTags({"Character", "Pack0"})
        shuffleInPlace(pack0Characters)
        clone = nil
        if pack0Characters[1].getName() == "Captain - Double Detector" then
            clone = cloneWithStandardProps(pack0Characters[2], cardPositions[1], {0.00, 90.00, 0.00}, true)
        else
            clone = cloneWithStandardProps(pack0Characters[1], cardPositions[1], {0.00, 90.00, 0.00}, true)
        end
        pack3Characters = getObjectsWithAllTags({"Character", "Pack3"})
        for _, card in ipairs(pack3Characters) do
            if card.getName() == "Walkie-Talkies" then
                clone = cloneWithStandardProps(card, cardPositions[2], {0.00, 90.00, 0.00}, true)
            elseif card.getName() == "Triple Detector" then
                clone = cloneWithStandardProps(card, cardPositions[3], {0.00, 90.00, 0.00}, true)
            elseif card.getName() == "General Radar" then
                clone = cloneWithStandardProps(card, cardPositions[4], {0.00, 90.00, 0.00}, true)
            elseif card.getName() == "X or Y ray" and xyBanned == false then
                clone = cloneWithStandardProps(card, cardPositions[5], {0.00, 90.00, 0.00}, true)
            end
        end
        
        -- Create character card buttons dynamically (first 4 cards are always available)
        for i = 1, 4 do
            local card = characterCardSuffixes[i]
            createStandardButton("addToCharList" .. card.suffix, "Add", {buttonPositions[i], addZPosition}, addWidth, fontSize)
            createStandardButton("removeFromCharList" .. card.suffix, "Remove", {buttonPositions[i], removeZPosition}, removeWidth, fontSize)
        end
        
        -- Special case: X or Y ray is conditionally created
        if xyBanned == false then
            createStandardButton("addToCharListXYR", "Add", {buttonPositions[5], addZPosition}, addWidth, fontSize)
            createStandardButton("removeFromCharListXYR", "Remove", {buttonPositions[5], removeZPosition}, removeWidth, fontSize)
        end
        
        createStandardButton("finishSetupAfterCharSel", "Finish Setup", {0, -3.2}, 1700, fontSize)
    else
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
            printToAll(string.format("%d: %s", num + 1, card))
        end
        return
    elseif selection ~= "Double Detector" then
        for _, card in ipairs(characterCardSelection) do
            if card == selection then
                printToAll("You can only have one of this character card.", {r=1,g=0,b=0})
                printToAll("Current selection:")
                printToAll("1: Captain - Double Detector")
                for num, card in ipairs(characterCardSelection) do
                    printToAll(string.format("%d: %s", num + 1, card))
                end
                return
            end
        end
    end
    table.insert(characterCardSelection, selection)
    printToAll(string.format("%s has been added to the selection.", selection))
    printToAll("Current selection:")
    printToAll("1: Captain - Double Detector")
    for num, card in ipairs(characterCardSelection) do
        printToAll(string.format("%d: %s", num + 1, card))
    end
end

function removeFromCharList(selection)
    printToAll("----------------------------")
    if #characterCardSelection == 0 then
        printToAll(string.format("%s was not found in the selection.", selection), {r=1,g=0,b=0})
        printToAll("Current selection:")
        printToAll("1: Captain - Double Detector")
        for num, card in ipairs(characterCardSelection) do
            printToAll(string.format("%d: %s", num + 1, card))
        end
        return
    else
        for num, card in ipairs(characterCardSelection) do
            if card == selection then
                table.remove(characterCardSelection, num)
                printToAll(string.format("%s has been removed from the selection.", selection))
                printToAll("Current selection:")
                printToAll("1: Captain - Double Detector")
                for num, card in ipairs(characterCardSelection) do
                    printToAll(string.format("%d: %s", num + 1, card))
                end
                return
            end
        end
    end
    printToAll(string.format("%s was not found in the selection.", selection), {r=1,g=0,b=0})
    printToAll("Current selection:")
    printToAll("1: Captain - Double Detector")
    for num, card in ipairs(characterCardSelection) do
        printToAll(string.format("%d: %s", num + 1, card))
    end
end

function finishSetupAfterCharSel()
    if #characterCardSelection ~= playerNum - 1 then
        printToAll("----------------------------")
        printToAll(string.format("You have not selected enough characters. You need %d selected.", playerNum), {r=1,g=0,b=0})
        if #characterCardSelection == 0 then
            printToAll("Character Selection List is currently empty.")
        else
            printToAll("Current selection:")
            printToAll("1: Captain - Double Detector")
            for num, card in ipairs(characterCardSelection) do
                printToAll(string.format("%d: %s", num + 1, card))
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
    -- Mission 34: Captain is chosen randomly instead of by character order
    if missionNum == 34 then
        captainColor = playerColors[math.random(1)]
        printToAll(string.format("The captain of this mission is %s!", captainColor))
    end
    while playerColors[1] ~= captainColor do
        wrap(playerColors, 1)
    end
    moveTokens(missionNum)
    prepareWiresAndMarkers(missionNum)
end

function sortPlayerColors(playerNum)
    players = {}
    for _, p in ipairs(Player.getPlayers()) do
        if p.color ~= "Black" then
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
        if playerColors[2] == blueGreen[2] then
            toInsert = blueGreen[2]
        elseif playerColors[2] == blueGreen[1] then
            toInsert = blueGreen[1]
        else
            playerColors[2] = blueGreen[2]
            players[2].changeColor(blueGreen[2])
            toInsert = blueGreen[2]
        end
        table.insert(doubleHandColors, toInsert)
    end
    -- Mission 65: All players are on the same "Jokers" team to allow for everyone to see their cards.
    if missionNum == 65 then
        for i = 1, #players do
            players[i].team = "Jokers"
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
    -- Missions 34 & 65: Use original player order instead of shuffled
    if missionNum == 34 or missionNum == 65 then
        ret = playerColors
    end
    flipped = 0
    -- Missions 27 & 34: Captain card appears flipped (face-down)
    if missionNum == 27 or missionNum == 34 then
        flipped = 180
    end
    captainCard = getObjectsWithTag("Captain")[1].clone({position={-130.02, 2.17, 0.00}, smooth=false})
    captainCard.locked = false
    captainCard.setPositionSmooth(characterPositions[shuffledPlayers[1]])
    captainCard.setRotation({
        characterRotations[shuffledPlayers[1]][1],
        characterRotations[shuffledPlayers[1]][2],
        characterRotations[shuffledPlayers[1]][3] + flipped
    })
    -- Mission 28: No captain card is used (destroyed immediately)
    if missionNum == 28 then
        captainCard.destruct()
    end
    captainCard.addTag("Destroy")
    otherCards = {}
    doubleDetectorCount = 0
    doubleDetectorTotal = 0
    for _, selection in ipairs(characterCardSelection) do
        if selection == "Double Detector" then
            doubleDetectorTotal = doubleDetectorTotal + 1
        end
    end
    log(doubleDetectorTotal)
    characterCards = getObjectsWithTag("Character")
    for num, card in ipairs(characterCards) do
        if card.hasTag("Destroy") == false and card.hasTag("Captain") == false then
            for _, selection in ipairs(characterCardSelection) do
                if card.getName() == selection then
                    if doubleDetectorCount < doubleDetectorTotal or selection ~= "Double Detector" then
                        clone = cloneWithStandardProps(card, {-82.13, 2.14, -6.47}, nil, false)
                        table.insert(otherCards, clone)
                        if selection == "Double Detector" then
                            doubleDetectorCount = doubleDetectorCount + 1
                        end
                        break
                    end
                end
            end
        end
    end
    shuffleInPlace(otherCards)
    -- Prepare positions and rotations for character cards
    local cardPositions = {}
    local cardRotations = {}
    for i = 1, #otherCards do
        cardPositions[i] = characterPositions[shuffledPlayers[i + 1]]
        cardRotations[i] = {characterRotations[shuffledPlayers[i + 1]][1], characterRotations[shuffledPlayers[i + 1]][2], characterRotations[shuffledPlayers[i + 1]][3] + flipped}
    end
    positionCards(otherCards, cardPositions, cardRotations)
    
    -- Mission 27: All other character cards are destroyed (only captain remains)
    if missionNum == 27 then
        for i = 1, #otherCards do
            otherCards[i].destruct()
        end
    end
    return ret
end

-- Sets up wires, markers, and tokens based on mission-specific requirements
function prepareWiresAndMarkers(missionNum)
    piles = {}
    if missionNum == 1 then
        sortWiresAndEquipment(piles, 6, 0, 0, 0, 0, 0, 0)
        placeValidationTokens(7, 12)
    elseif missionNum == 2 then
        sortWiresAndEquipment(piles, 8, 2, 2, 8, 0, 0, 8)
        placeValidationTokens(9, 12)
    elseif missionNum == 3 then
        sortWiresAndEquipment(piles, 10, 0, 0, 10, 1, 1, 10)
        placeValidationTokens(11, 12)
    elseif missionNum == 4 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 4, 4, 12, 1, 1, 12)
        else
            sortWiresAndEquipment(piles, 12, 2, 2, 12, 1, 1, 12)
        end
    elseif missionNum == 5 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 2, 3, 12, 2, 2, 12)
        else
            sortWiresAndEquipment(piles, 12, 2, 3, 12, 1, 1, 12)
        end
    elseif missionNum == 6 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 4, 4, 12, 2, 2, 12)
        else
            sortWiresAndEquipment(piles, 12, 4, 4, 12, 1, 1, 12)
        end
    elseif missionNum == 7 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 1, 3, 12)
        else
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 1, 2, 12)
        end
    elseif missionNum == 8 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 4, 4, 12, 1, 3, 12)
        else
            sortWiresAndEquipment(piles, 12, 2, 3, 12, 1, 2, 12)
        end
    elseif missionNum == 9 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 4, 4, 12, 2, 2, 12)
        else
            sortWiresAndEquipment(piles, 12, 2, 2, 12, 1, 1, 12)
        end
        setupSequence(0)
    elseif missionNum == 10 then
        sortWiresAndEquipment(piles, 12, 4, 4, 12, 1, 1, 12)
        timer = spawnObject({
            type = "Digital Clock",
            position = {-36.69, -0.28, 0.00},
            rotation = {90.00, 270.00, 0.00},
            scale = {2.55, 2.55, 2.55}
        })
        timer.locked = true
        timer.setColorTint({r=0, g=0, b=0})
        if playerNum < 3 then
            timer.setValue(720)
        else
            timer.setValue(900)
        end
        timer.addTag("Destroy")
    elseif missionNum == 11 then
        numberCards = getObjectsWithTag("Numbers")[1]
        cardsToDeal = numberCards.clone({position={-82.10, 2.20, -24.63}})
        cardsToDeal.locked = false
        cardsToDeal.shuffle()
        number = cardsToDeal.takeObject({position={-16.79, 1.53, -14.36}, rotation={0.45, 180.00, 0.00}})
        number.locked = false
        number.addTag("Destroy")
        bag = getObjectsWithTag("Warning")[1]
        clone = bag.takeObject({position=numberTokenPositions[tonumber(number.getName())], rotation={0.00, 180.00, 0.00}})
        clone.locked = false
        cardsToDeal.destruct()
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 4, 4, 12, 0, 0, 12)
        else
            sortWiresAndEquipment(piles, 12, 2, 2, 12, 0, 0, 12)
        end
    elseif missionNum == 12 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 4, 4, 12, 2, 2, 12)
        else
            sortWiresAndEquipment(piles, 12, 4, 4, 12, 1, 1, 12)
        end
        numberCardPositions = {
            {-14.58, 1.57, 4.10},
            {-7.29, 1.57, 4.35},
            {0.04, 1.57, 4.11},
            {7.35, 1.57, 4.43},
            {14.66, 1.57, 4.30}
        }
        numberCards = getObjectsWithTag("Numbers")[1]
        cardsToDeal = numberCards.clone({position={-82.10, 2.20, -24.63}})
        cardsToDeal.locked = false
        for i = 1, playerNum do
            number = cardsToDeal.takeObject({position=numberCardPositions[i], rotation={0.00, 180.00, 0.00}})
            number.locked = false
            number.addTag("Destroy")
        end
        cardsToDeal.destruct()
    elseif missionNum == 13 then
        sortWiresAndEquipment(piles, 12, 0, 0, 12, 0, 0, 12)
        
        redCopy = cloneAndPrepareDeck({"Wires", "Red"}, {-92.12, 2.38, -6.60}, {0.00, 0.00, 0.00}, true)
        count = 0
        redsRevealed = {}
        while count ~= 3 do
            ix = count
            wire = redCopy.takeObject({position={-92.12, 2.38, -1.60}, rotation={0.00, 0.00, 180.00}, smooth=false})
            wire.locked = false
            wire.addTag("Destroy")
            table.insert(piles[ix + 1], wire)
            table.insert(redsRevealed, wire)
            count = count + 1
        end
        redCopy.destruct()
        setupMarkers(redsRevealed, 3, 3, "Red")
        for _, pile in ipairs(piles) do
            table.sort(pile, function(a, b) return tonumber(a.getDescription()) < tonumber(b.getDescription()) end)
        end
        chooseRandomInfo(false)
    elseif missionNum == 14 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 4, 4, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, 12, 2, 3, 12, 2, 2, 12)
        end
    elseif missionNum == 15 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 2, 3, 12)
        else
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 1, 3, 12)
        end
        numberCards = getObjectsWithTag("Numbers")[1]
        cardsToDeal = numberCards.clone({position={-24.35, 1.56, 4.60}, rotation={0.00, 180.00, 180.00}})
        cardsToDeal.locked = false
        cardsToDeal.shuffle()
        number = cardsToDeal.takeObject({position={-24.35, 1.50, -4.60}, rotation={0.00, 180.00, 0.00}})
        number.locked = false
        number.addTag("Destroy")
        for i = 1, cardsToDeal.getQuantity() do
            card = cardsToDeal.takeObject({position={-24.35, 1.56, 4.60}, rotation={0.00, 180.00, 180.00}})
            card.locked = false
            card.addTag("Destroy")
        end
    elseif missionNum == 16 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 4, 4, 12, 2, 2, 12)
        else
            sortWiresAndEquipment(piles, 12, 2, 3, 12, 1, 1, 12)
        end
        setupSequence(1)
    elseif missionNum == 17 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 2, 3, 12)
        end
    elseif missionNum == 18 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 2, 2, 12)
        end
        numberCards = getObjectsWithTag("Numbers")[1]
        cardsToDeal = numberCards.clone({position={-24.35, 1.56, 4.60}, rotation={0.00, 180.00, 180.00}})
        cardsToDeal.locked = false
        cardsToDeal.shuffle()
        for i = 1, cardsToDeal.getQuantity() do
            card = cardsToDeal.takeObject({position={-24.35, 1.56, 4.60}, rotation={0.00, 180.00, 180.00}})
            card.locked = false
            card.addTag("Destroy")
        end
    elseif missionNum == 19 then
        sortWiresAndEquipment(piles, 12, 2, 3, 12, 1, 1, 12)
        MusicPlayer.setCurrentAudioclip({
            url = "https://files.brawlbox.co.uk/Tabletop%20Simulator/Bomb%20Busters/BB-Final_Mission-19.mp3",
            title = "Mission 19"
        })
        MusicPlayer.play()
        printToAll("Use the built-in music player to control the audio - select 'Music' on the toolbar at the top.")
    elseif missionNum == 20 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 4, 4, 12, 2, 3, 12)
        else
            sortWiresAndEquipment(piles, 12, 2, 2, 12, 2, 2, 12)
        end
    elseif missionNum == 21 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 2, 2, 12)
        else
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 1, 2, 12)
        end
    elseif missionNum == 22 then
        sortWiresAndEquipment(piles, 12, 4, 4, 12, 1, 1, 12)
    elseif missionNum == 23 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 2, 3, 12)
        else
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 1, 3, 12)
        end
        numberCards = getObjectsWithTag("Numbers")[1]
        cardsToDeal = numberCards.clone({position={-82.10, 2.20, -24.63}})
        cardsToDeal.locked = false
        cardsToDeal.shuffle()
        number = cardsToDeal.takeObject({position={-24.18, 1.58, 0.00}, rotation={0.00, 180.00, 0.00}})
        number.locked = false
        number.addTag("Destroy")
        cardsToDeal.destruct()
    elseif missionNum == 24 or missionNum == 25 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 2, 2, 12)
        end
    elseif missionNum == 26 then
        sortWiresAndEquipment(piles, 12, 0, 0, 12, 2, 2, 12)
        cardPositions = {
            {-44.08, 1.50, 8.31},
            {-38.14, 1.50, 8.31},
            {-32.19, 1.50, 8.31},
            {-26.24, 1.50, 8.31},
            {-44.08, 1.50, 0.00},
            {-38.14, 1.50, 0.00},
            {-32.19, 1.50, 0.00},
            {-26.24, 1.50, 0.00},
            {-44.08, 1.50, -8.32},
            {-38.14, 1.50, -8.32},
            {-32.19, 1.50, -8.32},
            {-26.24, 1.50, -8.32}
        }
        numberCards = {}
        sourceDeck = getObjectsWithTag("Numbers")[1]
        numberCardDeck = sourceDeck.clone({position={-62.10, 2.20, -24.63}})
        numberCardDeck.locked = false
        for i = 1, 12 do
            card = numberCardDeck.takeObject({position={-82.10, 2.20, -24.63}})
            card.locked = false
            card.addTag("Destroy")
            table.insert(numberCards, card)
        end
        table.sort(numberCards, function(a, b) return tonumber(a.getName()) < tonumber(b.getName()) end)
        for i = 1, 12 do
            numberCards[i].setPositionSmooth(cardPositions[i])
            numberCards[i].setRotation({0.00, 180.00, 0.00})
        end
    elseif missionNum == 27 then
        sortWiresAndEquipment(piles, 12, 4, 4, 12, 1, 1, 12)
    elseif missionNum == 28 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 4, 4, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, 12, 4, 4, 12, 2, 2, 12)
        end
    elseif missionNum == 29 then
        sortWiresAndEquipment(piles, 12, 0, 0, 12, 3, 3, 12)
        numberCards = getObjectsWithTag("Numbers")[1]
        cardsToDeal = numberCards.clone({position={-24.35, 1.56, 4.60}, rotation={0.00, 180.00, 180.00}})
        cardsToDeal.locked = false
        cardsToDeal.addTag("Destroy")
        cardsToDeal.shuffle()
        cardsTable = {}
        for i = 1, cardsToDeal.getQuantity() do
            card = cardsToDeal.takeObject({position={-24.35, 1.56, 4.60}, rotation={0.00, 180.00, 180.00}})
            card.locked = false
            card.addTag("Destroy")
            table.insert(cardsTable, card)
        end
        for i = 1, playerNum do
            isBlueGreen = 1
            if playerColors[i] == "Blue" or playerColors[i] == "Green" then
                isBlueGreen = -1
            end
            cardCount = 2
            if i == playerNum then
                cardCount = 3
            end
            for j = 1, cardCount do
                cardsTable[1].setPositionSmooth({characterPositions[playerColors[i]][1] + (7 * isBlueGreen), characterPositions[playerColors[i]][2], characterPositions[playerColors[i]][3]})
                cardsTable[1].setRotation({0.00, characterRotations[playerColors[i]][2], 180.00})
                table.remove(cardsTable, 1)
            end
        end
    elseif missionNum == 30 then
        sortWiresAndEquipment(piles, 12, 4, 4, 12, 1, 2, 12)
        numberCards = getObjectsWithTag("Numbers")[1]
        cardsToDeal = numberCards.clone({position={-24.35, 1.56, 4.60}, rotation={0.00, 180.00, 180.00}})
        cardsToDeal.locked = false
        cardsToDeal.shuffle()
        for i = 1, cardsToDeal.getQuantity() do
            card = cardsToDeal.takeObject({position={-24.35, 1.56, 4.60}, rotation={0.00, 180.00, 180.00}})
            card.locked = false
            card.addTag("Destroy")
        end
        MusicPlayer.setCurrentAudioclip({
            url = "https://files.brawlbox.co.uk/Tabletop%20Simulator/Bomb%20Busters/BB-Final_Mission-30.mp3",
            title = "Mission 30"
        })
        MusicPlayer.play()
        printToAll("Use the built-in music player to control the audio - select 'Music' on the toolbar at the top.")
    elseif missionNum == 31 then
        sortWiresAndEquipment(piles, 12, 0, 0, 12, 2, 3, 12)
        constraintCards = getObjectsWithTag("Constraint")[1]
        isBlueGreen = 1
        cardsAreGood = false
        while cardsAreGood == false do
            constraintDeck = constraintCards.clone({position={-62.10, 2.20, -24.63}, rotation={0.00, 180.00, 180.00}})
            constraintDeck.locked = false
            cardsAreGood = true
            cardsToDeal = {}
            for i = 1, constraintDeck.getQuantity() do
                card = constraintDeck.takeObject({position={-82.10, 2.20, -24.63}, rotation={0.00, 180.00, 180.00}})
                if (card.getName() == "A"
                or card.getName() == "B"
                or card.getName() == "C"
                or card.getName() == "D"
                or card.getName() == "E") then
                    table.insert(cardsToDeal, card)
                    card.addTag("Destroy")
                else
                    card.destruct()
                end
            end
            shuffleInPlace(cardsToDeal)
            constraintCardPositions = {
                {-42.32, 1.50, -11.87},
                {-42.32, 1.50, -5.94},
                {-42.32, 1.50, -0.01},
                {-42.32, 1.50, 5.92},
                {-42.32, 1.50, 11.85}
            }
            for i = 1, #cardsToDeal do
                cardsToDeal[i].setPosition(constraintCardPositions[i])
                cardsToDeal[i].setRotation({0.00, 90.00, 0.00})
            end
            if playerNum < 3 then
                count = 0
                for i = 1, 5 do
                    if cardsToDeal[i].getName() == "A" or cardsToDeal[i].getName() == "B" then
                        count = count + 1
                    end
                end
                if count == 2 then
                    cardsAreGood = false
                end
                count = 0
                for i = 1, 5 do
                    if cardsToDeal[i].getName() == "C" or cardsToDeal[i].getName() == "D" then
                        count = count + 1
                    end
                end
                if count == 2 then
                    cardsAreGood = false
                end
            end
            if cardsAreGood == false then
                for _, card in ipairs(cardsToDeal) do
                    card.destruct()
                end
            end
        end
    elseif missionNum == 32 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 2, 2, 12)
        end
        constraintCards = getObjectsWithTag("Constraint")[1]
        cardsToDeal = constraintCards.clone({position={-24.35, 1.56, 4.60}, rotation={0.00, 180.00, 180.00}})
        cardsToDeal.locked = false
        cardsToDeal.shuffle()
        for i = 1, cardsToDeal.getQuantity() do
            card = cardsToDeal.takeObject({position={-24.35, 1.56, 4.60}, rotation={0.00, 180.00, 180.00}})
            card.locked = false
            card.addTag("Destroy")
        end
    elseif missionNum == 33 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 2, 3, 12)
        end
    elseif missionNum == 34 then
        if playerNum < 3 then
            printToAll("Mission cannot be played with only 2 players.")
            return
        end
        sortWiresAndEquipment(piles, 12, 0, 0, 12, 1, 1, 12)
        constraintCards = getObjectsWithTag("Constraint")[1]
        constraintDeck = constraintCards.clone({position={-62.10, 2.20, -24.63}, rotation={0.00, 180.00, 180.00}})
        constraintDeck.locked = false
        constraintDeck.shuffle()
        cardsToDeal = {}
        for i = 1, constraintDeck.getQuantity() do
            card = constraintDeck.takeObject({position={-62.10, 2.20, -24.63}, rotation={0.00, 180.00, 180.00}})
            card.locked = false
            if (card.getName() == "A"
            or card.getName() == "B"
            or card.getName() == "C"
            or card.getName() == "D"
            or card.getName() == "E") then
                table.insert(cardsToDeal, card)
                card.addTag("Destroy")
            else
                card.destruct()
            end
        end
        shuffleInPlace(cardsToDeal)
        for num, card in ipairs(cardsToDeal) do
            if num > playerNum then
                card.destruct()
            else
                card.setPosition(playerHandPositions[playerColors[num]])
                card.setRotation(characterRotations[playerColors[num]])
            end
        end
    elseif missionNum == 35 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 4, 4, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, 12, 4, 4, 12, 2, 3, 12)
        end
    elseif missionNum == 36 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 4, 4, 12, 2, 3, 12)
        else
            sortWiresAndEquipment(piles, 12, 2, 2, 12, 1, 3, 12)
        end
        numberCardPositions = {
            {-40.79, 1.50, -12.44},
            {-40.79, 1.50, -6.22},
            {-40.79, 1.50, 0.00},
            {-40.79, 1.50, 6.22},
            {-40.79, 1.50, 12.44}
        }
        numberCards = getObjectsWithTag("Numbers")[1]
        cardsToDeal = numberCards.clone({position={-82.10, 2.20, -24.63}})
        cardsToDeal.locked = false
        cardsToDeal.shuffle()
        for i = 1, 5 do
            number = cardsToDeal.takeObject({position=numberCardPositions[i], rotation={0.00, 90.00, 0.00}})
            number.locked = false
            number.addTag("Destroy")
            bag = getObjectsWithTag("Warning")[1]
            clone = bag.takeObject({position=numberTokenPositions[tonumber(number.getName())], rotation={0.00, 180.00, 0.00}})
        end
        cardsToDeal.destruct()

        sourceSequenceCard = getObjectsWithTag("Sequence")[1]
        sequenceRotation = {0.00, 180.00, 0.00}
        sequenceCard = sourceSequenceCard.clone({position=playerHandPositions[playerColors[1]], rotation=sequenceRotation})
        sequenceCard.locked = false
        sequenceCard.addTag("Destroy")
    elseif missionNum == 37 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 2, 2, 12)
        end
        constraintCards = getObjectsWithTag("Constraint")[1]
        cardsToDeal = constraintCards.clone({position={-24.35, 1.56, 4.60}, rotation={0.00, 180.00, 180.00}})
        cardsToDeal.locked = false
        cardsToDeal.shuffle()
        constraint = cardsToDeal.takeObject({position={-24.35, 1.50, -4.60}, rotation={0.00, 180.00, 0.00}})
        constraint.locked = false
        constraint.addTag("Destroy")
        for i = 1, cardsToDeal.getQuantity() do
            card = cardsToDeal.takeObject({position={-24.35, 1.56, 4.60}, rotation={0.00, 180.00, 180.00}})
            card.locked = false
            card.addTag("Destroy")
        end
    elseif missionNum == 38 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 2, 2, 12)
        end
    elseif missionNum == 39 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 4, 4, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, 12, 4, 4, 12, 2, 3, 12)
        end
        
        numberCards = getObjectsWithTag("Numbers")[1]
        cardsToDeal = numberCards.clone({position={-82.10, 2.20, -24.63}, rotation={0.00, 180.00, 180.00}})
        cardsToDeal.locked = false
        cardsToDeal.shuffle()
        number = cardsToDeal.takeObject({position=equipmentPositions[1], rotation={0.00, 180.00, 0.00}})
        number.locked = false
        number.addTag("Destroy")
        for i = 1, 8 do
            card = cardsToDeal.takeObject({position={-24.35, 1.56, 4.60}, rotation={0.00, 180.00, 180.00}})
            card.locked = false
            card.addTag("Destroy")
        end
        cardsToDeal.destruct()
        chooseRandomInfo(false)
    elseif missionNum == 40 then
        sortWiresAndEquipment(piles, 12, 0, 0, 12, 3, 3, 12)
    elseif missionNum == 41 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 2, 3, 12)
        else
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 1, 3, 12)
        end
        chooseRandomInfo(false)
    elseif missionNum == 42 then
        sortWiresAndEquipment(piles, 12, 4, 4, 12, 1, 3, 12)

        MusicPlayer.setCurrentAudioclip({
            url = "https://files.brawlbox.co.uk/Tabletop%20Simulator/Bomb%20Busters/BB-Final_Mission-42.mp3",
            title = "Mission 42"
        })
        MusicPlayer.play()
        printToAll("Use the built-in music player to control the audio - select 'Music' on the toolbar at the top.")
    elseif missionNum == 43 then    
        setupNano(numberTokenPositions[1], 1)
        sortWiresAndEquipment(piles, 12, 0, 0, 12, 3, 3, 12)
    elseif missionNum == 44 then
        sortWiresAndEquipment(piles, 12, 0, 0, 12, 1, 3, 12)

        oxygenTokens = getObjectsWithTag("OxygenTokens")[1]
        cardsToDeal = oxygenTokens.clone({position={-82.10, 2.20, -24.63}, rotation={0.00, 180.00, 180.00}})
        cardsToDeal.locked = false
        cardsToDeal.shuffle()
        for i = 1, playerNum * 2 do
            card = cardsToDeal.takeObject({position={-16.65, 1.57, -14.39}, rotation={0.00, 180.00, 0.00}})
            card.locked = false
            card.addTag("Destroy")
        end
        cardsToDeal.destruct()
    elseif missionNum == 45 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 2, 2, 12)
        end
        numberCards = getObjectsWithTag("Numbers")[1]
        cardsToDeal = numberCards.clone({position={-24.35, 1.56, 4.60}, rotation={0.00, 180.00, 180.00}})
        cardsToDeal.locked = false
        cardsToDeal.shuffle()
        for i = 1, cardsToDeal.getQuantity() do
            card = cardsToDeal.takeObject({position={-24.35, 1.56, 4.60}, rotation={0.00, 180.00, 180.00}})
            card.locked = false
            card.addTag("Destroy")
        end
    elseif missionNum == 46 then
        sortWiresAndEquipment(piles, 12, 4, 4, 12, 0, 0, 12)
        bag = getObjectsWithTag("Warning")[1]
        clone = bag.takeObject({position=numberTokenPositions[7], rotation={0.00, 180.00, 0.00}})
        clone.locked = false
    elseif missionNum == 47 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 2, 3, 12)
        end
        cardPositions = {
            {-44.08, 1.50, 8.31},
            {-38.14, 1.50, 8.31},
            {-32.19, 1.50, 8.31},
            {-26.24, 1.50, 8.31},
            {-44.08, 1.50, 0.00},
            {-38.14, 1.50, 0.00},
            {-32.19, 1.50, 0.00},
            {-26.24, 1.50, 0.00},
            {-44.08, 1.50, -8.32},
            {-38.14, 1.50, -8.32},
            {-32.19, 1.50, -8.32},
            {-26.24, 1.50, -8.32}
        }
        numberCards = {}
        sourceDeck = getObjectsWithTag("Numbers")[1]
        numberCardDeck = sourceDeck.clone({position={-62.10, 2.20, -24.63}})
        numberCardDeck.locked = false
        for i = 1, 12 do
            card = numberCardDeck.takeObject({position={-82.10, 2.20, -24.63}})
            card.locked = false
            card.addTag("Destroy")
            table.insert(numberCards, card)
        end
        table.sort(numberCards, function(a, b) return tonumber(a.getName()) < tonumber(b.getName()) end)
        for i = 1, 12 do
            numberCards[i].setPositionSmooth(cardPositions[i])
            numberCards[i].setRotation({0.00, 180.00, 0.00})
        end
    elseif missionNum == 48 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 2, 2, 12)
        end
    elseif missionNum == 49 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 2, 2, 12)
        end
        oxygenTokens = getObjectsWithTag("OxygenTokens")[1]
        tokensToDeal = oxygenTokens.clone({position={-82.10, 2.20, -24.63}, rotation={0.00, 180.00, 180.00}})
        tokensToDeal.locked = false
        tokensToDeal.shuffle()
        isBlueGreen = 1
        for i = 1, playerNum do
            if playerColors[i] == "Blue" or playerColors[i] == "Green" then
                isBlueGreen = -1
            end
            tokenCount = 7
            if playerNum == 3 then
                tokenCount = 6
            elseif playerNum == 4 then
                tokenCount = 5
            elseif playerNum == 5 then
                tokenCount = 4
            end
            for j = 1, tokenCount do
                token = tokensToDeal.takeObject({position={
                    characterPositions[playerColors[i]][1] + (7 * isBlueGreen),
                    characterPositions[playerColors[i]][2],
                    characterPositions[playerColors[i]][3]
                }, rotation={0.00, characterRotations[playerColors[i]][2], 180.00}})
                token.locked = false
                token.addTag("Destroy")
            end
        end
        tokensToDeal.destruct()
    elseif missionNum == 50 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 4, 4, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, 12, 2, 2, 12, 2, 2, 12)
        end
    elseif missionNum == 51 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 2, 2, 12)
        else
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 1, 1, 12)
        end
        numberCards = getObjectsWithTag("Numbers")[1]
        cardsToDeal = numberCards.clone({position={-24.35, 1.56, 4.60}, rotation={0.00, 180.00, 180.00}})
        cardsToDeal.locked = false
        cardsToDeal.shuffle()
        for i = 1, cardsToDeal.getQuantity() do
            card = cardsToDeal.takeObject({position={-24.35, 1.56, 4.60}, rotation={0.00, 180.00, 180.00}})
            card.locked = false
            card.addTag("Destroy")
        end
    elseif missionNum == 52 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 4, 4, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 3, 3, 12)
        end
    elseif missionNum == 53 then
        setupNano({-20.22, 2.02, -1.16}, 1)
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 2, 2, 12)
        end
    elseif missionNum == 54 then
        sortWiresAndEquipment(piles, 12, 0, 0, 12, 0, 0, 12)
        wires = cloneAndPrepareDeck({"Wires", "Red"}, {-16.78, 1.59, -14.52}, {0.00, 90.00, 0.00}, true)
        for i = 1, wires.getQuantity() do
            wire = wires.takeObject({position={-16.78, 1.59, -14.52}, rotation={0.00, 90.00, 0.00}})
            wire.locked = false
            wire.addTag("Destroy")
        end
        oxygenTokens = getObjectsWithTag("OxygenTokens")[1]
        tokensToDeal = oxygenTokens.clone({position={-24.35, 1.56, 4.60}, rotation={0.00, 180.00, 180.00}})
        tokensToDeal.locked = false
        tokensToDeal.shuffle()
        isBlueGreen = 1
        for i = 1, playerNum do
            if playerColors[i] == "Blue" or playerColors[i] == "Green" then
                isBlueGreen = -1
            end
            tokenCount = 9
            if playerNum == 3 then
                tokenCount = 6
            elseif playerNum == 4 then
                tokenCount = 3
            elseif playerNum == 5 then
                tokenCount = 2
            end
            for j = 1, tokenCount do
                token = tokensToDeal.takeObject({position={
                    characterPositions[playerColors[i]][1] + (7 * isBlueGreen),
                    characterPositions[playerColors[i]][2],
                    characterPositions[playerColors[i]][3]
                }, rotation={0.00, characterRotations[playerColors[i]][2], 180.00}})
                token.locked = false
                token.addTag("Destroy")
            end
        end
        for i = 1, tokensToDeal.getQuantity() do
            token = tokensToDeal.takeObject({position={-24.35, 3.00, 0.00}, rotation={0.00, 180.00, 180.00}})
            token.locked = false
            token.addTag("Destroy")
        end
        tokensToDeal.destruct()

        MusicPlayer.setCurrentAudioclip({
            url = "https://files.brawlbox.co.uk/Tabletop%20Simulator/Bomb%20Busters/BB-Final_Mission-54.mp3",
            title = "Mission 54"
        })
        MusicPlayer.play()
        printToAll("Use the built-in music player to control the audio - select 'Music' on the toolbar at the top.")
    elseif missionNum == 55 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 2, 3, 12)
        else
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 2, 2, 12)
        end
        challengePositions = {
            {-46.65, 1.50, 0.00},
            {-46.65, 1.50, -7.26},
            {-46.65, 1.50, 7.26},
            {-46.65, 1.50, -14.53},
            {-46.65, 1.50, 14.53}
        }
        
        challengeCards = getObjectsWithTag("Challenge")[1]
        cardsToDeal = challengeCards.clone({position={-82.10, 2.20, -24.63}})
        cardsToDeal.locked = false
        cardsToDeal.shuffle()
        challenges = {}
        for i = 1, playerNum do
            challenge = cardsToDeal.takeObject({position={-82.10, 2.20, -24.63}})
            challenge.locked = false
            challenge.addTag("Destroy")
            table.insert(challenges, challenge)
        end
        table.sort(challenges, function(a, b) return tonumber(a.getName()) < tonumber(b.getName()) end)
        for i = 1, playerNum do
            challenges[i].setPosition(challengePositions[i])
            challenges[i].setRotation({0.00, 180.00, 0.00})
            if challenges[i].getName() == "8" then
                numberCards = getObjectsWithTag("Numbers")[1]
                numbersToDeal = numberCards.clone({position={-92.10, 2.20, -24.63}, rotation={0.00, 180.00, 180.00}})
                numbersToDeal.locked = false
                numbersToDeal.shuffle()
                card = numbersToDeal.takeObject({position={challengePositions[i][1] + 3.89, challengePositions[i][2] + 0.02, challengePositions[i][3] - 5.04}, rotation={0.27, 105.00, 0.00}})
                card.addTag("Destroy")
                card = numbersToDeal.takeObject({position={challengePositions[i][1] + 3.84, challengePositions[i][2] + 0.02, challengePositions[i][3] + 5.04}, rotation={0.15, 75.00, 0.17}})
                card.addTag("Destroy")
                numbersToDeal.destruct()
            end
        end
        cardsToDeal.destruct()
    elseif missionNum == 56 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 2, 3, 12)
        end
    elseif missionNum == 57 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 2, 2, 12)
        else
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 1, 1, 12)
        end
        cardPositions = {
            {-44.08, 1.50, 8.31},
            {-38.14, 1.50, 8.31},
            {-32.19, 1.50, 8.31},
            {-26.24, 1.50, 8.31},
            {-44.08, 1.50, 0.00},
            {-38.14, 1.50, 0.00},
            {-32.19, 1.50, 0.00},
            {-26.24, 1.50, 0.00},
            {-44.08, 1.50, -8.32},
            {-38.14, 1.50, -8.32},
            {-32.19, 1.50, -8.32},
            {-26.24, 1.50, -8.32}
        }
        numberCards = {}
        sourceDeck = getObjectsWithTag("Numbers")[1]
        numberCardDeck = sourceDeck.clone({position={-62.10, 2.20, -24.63}})
        numberCardDeck.locked = false
        for i = 1, 12 do
            card = numberCardDeck.takeObject({position={-82.10, 2.20, -24.63}})
            card.locked = false
            card.addTag("Destroy")
            table.insert(numberCards, card)
        end
        table.sort(numberCards, function(a, b) return tonumber(a.getName()) < tonumber(b.getName()) end)
        for i = 1, 12 do
            numberCards[i].setPositionSmooth(cardPositions[i])
            numberCards[i].setRotation({0.00, 180.00, 0.00})
        end
        constraintCards = {}
        sourceDeck = getObjectsWithTag("Constraint")[1]
        constraintCardDeck = sourceDeck.clone({position={-62.10, 2.20, -24.63}, scale={2.00, 1.00, 2.00}})
        constraintCardDeck.locked = false
        constraintCardDeck.shuffle()
        for i = 1, 12 do
            card = constraintCardDeck.takeObject({position={-82.10, 2.20, -24.63}})
            card.locked = false
            card.addTag("Destroy")
            table.insert(constraintCards, card)
        end
        for i = 1, 12 do
            constraintCards[i].setPositionSmooth({cardPositions[i][1], cardPositions[i][2] + 1, cardPositions[i][3]})
            constraintCards[i].setRotation({0.00, 180.00, 0.00})
        end
    elseif missionNum == 58 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 2, 2, 12)
        end
    elseif missionNum == 59 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 2, 3, 12)
        end
        cardPositions = {
            {-44.08, 1.50, 8.31},
            {-38.14, 1.50, 8.31},
            {-32.19, 1.50, 8.31},
            {-26.24, 1.50, 8.31},
            {-44.08, 1.50, 0.00},
            {-38.14, 1.50, 0.00},
            {-32.19, 1.50, 0.00},
            {-26.24, 1.50, 0.00},
            {-44.08, 1.50, -8.32},
            {-38.14, 1.50, -8.32},
            {-32.19, 1.50, -8.32},
            {-26.24, 1.50, -8.32}
        }
        numberCards = {}
        sourceDeck = getObjectsWithTag("Numbers")[1]
        numberCardDeck = sourceDeck.clone({position={-62.10, 2.20, -24.63}})
        numberCardDeck.locked = false
        numberCardDeck.shuffle()
        for i = 1, 12 do
            card = numberCardDeck.takeObject({position={-82.10, 2.20, -24.63}})
            card.locked = false
            card.addTag("Destroy")
            table.insert(numberCards, card)
        end
        for i = 1, 12 do
            if numberCards[i].getName() == "7" then
                local direction = 1
                if i == 12 then
                    direction = 0
                end
                setupNano(cardPositions[i], direction)
            end
            numberCards[i].setPositionSmooth(cardPositions[i])
            numberCards[i].setRotation({0.00, 180.00, 0.00})
        end
    elseif missionNum == 60 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 2, 3, 12)
        end
        challengePositions = {
            {-46.65, 1.50, -14.53},
            {-46.65, 1.50, -7.26},
            {-46.65, 1.50, 0.00},
            {-46.65, 1.50, 7.26},
            {-46.65, 1.50, 14.53}
        }
        
        challengeCards = getObjectsWithTag("Challenge")[1]
        cardsToDeal = challengeCards.clone({position={-82.10, 2.20, -24.63}})
        cardsToDeal.locked = false
        cardsToDeal.shuffle()
        challenges = {}
        for i = 1, playerNum do
            challenge = cardsToDeal.takeObject({position={-82.10, 2.20, -24.63}})
            challenge.locked = false
            challenge.addTag("Destroy")
            table.insert(challenges, challenge)
        end
        table.sort(challenges, function(a, b) return tonumber(a.getName()) < tonumber(b.getName()) end)
        for i = 1, playerNum do
            challenges[i].setPosition(challengePositions[i])
            challenges[i].setRotation({0.00, 180.00, 0.00})
            if challenges[i].getName() == "8" then
                numberCards = getObjectsWithTag("Numbers")[1]
                numbersToDeal = numberCards.clone({position={-92.10, 2.20, -24.63}, rotation={0.00, 180.00, 180.00}})
                numbersToDeal.locked = false
                numbersToDeal.shuffle()
                card = numbersToDeal.takeObject({position={challengePositions[i][1] + 3.89, challengePositions[i][2] + 0.02, challengePositions[i][3] - 5.04}, rotation={0.27, 105.00, 0.00}})
                card.addTag("Destroy")
                card = numbersToDeal.takeObject({position={challengePositions[i][1] + 3.84, challengePositions[i][2] + 0.02, challengePositions[i][3] + 5.04}, rotation={0.15, 75.00, 0.17}})
                card.addTag("Destroy")
                numbersToDeal.destruct()
            end
        end
        cardsToDeal.destruct()
    elseif missionNum == 61 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 2, 2, 12)
        else
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 1, 1, 12)
        end
        constraintCards = getObjectsWithTag("Constraint")[1]
        constraintDeck = constraintCards.clone({position={-24.35, 1.56, 4.60}, rotation={0.00, 180.00, 180.00}})
        constraintDeck.locked = false
        constraintDeck.shuffle()
        cardsToDeal = {}
        for i = 1, constraintDeck.getQuantity() do
            card = constraintDeck.takeObject({position={-24.35, 1.56, 4.60}, rotation={0.00, 180.00, 180.00}})
            card.locked = false
            card.addTag("Destroy")
            if (card.getName() == "A"
            or card.getName() == "B"
            or card.getName() == "C"
            or card.getName() == "D"
            or card.getName() == "E") then
                if playerNum < 5 and #cardsToDeal == 4 then
                    card.destruct()
                else
                    table.insert(cardsToDeal, card)
                end
            end
        end
        shuffleInPlace(cardsToDeal)
        j = 0
        for i = 1, #cardsToDeal do
            j = j + 1
            if j > #cardsToDeal then
                break
            end
            isBlueGreen = 1
            if playerColors[i] == "Blue" or playerColors[i] == "Green" then
                isBlueGreen = -1
            end
            if i == 1 and playerNum < 4 then
                if playerNum == 2 then
                    cardsToDeal[j].setPosition({
                        characterPositions[playerColors[i]][1],
                        characterPositions[playerColors[i]][2] + 25,
                        characterPositions[playerColors[i]][3] - (3 * isBlueGreen)
                    })
                    cardsToDeal[j].setRotation({0.00, characterRotations[playerColors[i]][2], 0.00})
                    j = j + 1
                    cardsToDeal[j].setPosition({
                        characterPositions[playerColors[i]][1] + (7 * isBlueGreen),
                        characterPositions[playerColors[i]][2],
                        characterPositions[playerColors[i]][3]
                    })
                    cardsToDeal[j].setRotation({0.00, characterRotations[playerColors[i]][2], 0.00})
                    j = j + 1
                    cardsToDeal[j].setPosition({
                        characterPositions[playerColors[i]][1] + (-7 * isBlueGreen),
                        characterPositions[playerColors[i]][2],
                        characterPositions[playerColors[i]][3]
                    })
                    cardsToDeal[j].setRotation({0.00, characterRotations[playerColors[i]][2], 0.00})
                elseif playerNum == 3 then
                    cardsToDeal[j].setPosition({
                        characterPositions[playerColors[i]][1],
                        characterPositions[playerColors[i]][2] + 25,
                        characterPositions[playerColors[i]][3] - (3 * isBlueGreen)
                    })
                    cardsToDeal[j].setRotation({0.00, characterRotations[playerColors[i]][2], 0.00})
                    j = j + 1
                    cardsToDeal[j].setPosition({
                        characterPositions[playerColors[i]][1] + (-7 * isBlueGreen),
                        characterPositions[playerColors[i]][2],
                        characterPositions[playerColors[i]][3]
                    })
                    cardsToDeal[j].setRotation({0.00, characterRotations[playerColors[i]][2], 0.00})
                end
            else
                cardsToDeal[j].setPosition({
                    characterPositions[playerColors[i]][1],
                    characterPositions[playerColors[i]][2] + 25,
                    characterPositions[playerColors[i]][3] - (3 * isBlueGreen)
                })
                cardsToDeal[j].setRotation({0.00, characterRotations[playerColors[i]][2], 0.00})
            end
        end
    elseif missionNum == 62 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 2, 2, 12)
        end
        numberPositions = {
            {-40.79, 1.50, -12.44},
            {-40.79, 1.50, -6.22},
            {-40.79, 1.50, 0.00},
            {-40.79, 1.50, 6.22},
            {-40.79, 1.50, 12.44}
        }
        
        numberCards = getObjectsWithTag("Numbers")[1]
        cardsToDeal = numberCards.clone({position={-82.10, 2.20, -24.63}})
        cardsToDeal.locked = false
        cardsToDeal.shuffle()
        numbers = {}
        for i = 1, playerNum do
            number = cardsToDeal.takeObject({position={-82.10, 2.20, -24.63}})
            number.locked = false
            table.insert(numbers, number)
        end
        table.sort(numbers, function(a, b) return tonumber(a.getName()) < tonumber(b.getName()) end)
        for i = 1, playerNum do
            numbers[i].setPosition(numberPositions[i])
            numbers[i].setRotation({0.00, 90.00, 0.00})
            numbers[i].addTag("Destroy")
        end
        cardsToDeal.destruct()
    elseif missionNum == 63 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 2, 2, 12)
        end
        tokenCount = 14
        if playerNum == 3 then
            tokenCount = 18
        elseif playerNum == 4 then
            tokenCount = 24
        elseif playerNum == 5 then
            tokenCount = 30
        end
        oxygenTokens = getObjectsWithTag("OxygenTokens")[1]
        tokensToDeal = oxygenTokens.clone({position={-82.10, 2.20, -24.63}, rotation={0.00, 180.00, 180.00}})
        tokensToDeal.locked = false
        tokensToDeal.shuffle()
        isBlueGreen = 1
        if playerColors[1] == "Blue" or playerColors[1] == "Green" then
            isBlueGreen = -1
        end
        for i = 1, tokenCount do
            token = tokensToDeal.takeObject({position=
                            {characterPositions[playerColors[1]][1] + (7 * isBlueGreen),
                            characterPositions[playerColors[1]][2],
                            characterPositions[playerColors[1]][3]}, rotation=characterRotations[playerColors[1]]})
            token.locked = false
            token.addTag("Destroy")
        end
        tokensToDeal.destruct()
    elseif missionNum == 64 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 2, 2, 12)
        else
            sortWiresAndEquipment(piles, 12, 0, 0, 12, 1, 1, 12)
        end
    elseif missionNum == 65 then
        if playerNum < 3 then
            printToAll("Mission cannot be played with only 2 players.")
            return
        end
        sortWiresAndEquipment(piles, 12, 0, 0, 12, 3, 3, 12)
        numberCards = getObjectsWithTag("Numbers")[1]
        cardsToDeal = numberCards.clone({position={-82.10, 2.20, -24.63}, rotation={0.00, 180.00, 180.00}})
        cardsToDeal.locked = false
        cardsToDeal.shuffle()
        isBlueGreen = 1
        for i = 1, playerNum do
            if playerColors[i] == "Blue" or playerColors[i] == "Green" then
                isBlueGreen = -1
            end
            cardCount = 3
            if playerNum == 3 then
                cardCount = 4
            elseif playerNum == 5 and i > 2 then
                cardCount = 2
            end

            for j = 1, cardCount do
                card = cardsToDeal.takeObject({position={
                    characterPositions[playerColors[i]][1] + (7 * isBlueGreen),
                    characterPositions[playerColors[i]][2],
                    characterPositions[playerColors[i]][3]
                }, rotation={0.00, characterRotations[playerColors[i]][2], 0.00}})
                card.locked = false
                card.addTag("Destroy")
            end
        end
    elseif missionNum == 66 then
        sortWiresAndEquipment(piles, 12, 2, 2, 12, 2, 2, 12)
        bunkerCard = getObjectsWithTag("Bunker")[1]
        card = bunkerCard.clone({position={-37.83, 1.50, 0.00}})
        card.addTag("Destroy")
        card.locked = false
        standee = getObjectsWithTag("Standee")[1]
        clone = standee.clone({position={-39.73, 3.12, -3.28}})
        clone.addTag("Destroy")
        clone.locked = false

        constraintPositions = {
            {-43.80, 1.50, 0.00},
            {-37.83, 1.50, 8.42},
            {-31.86, 1.50, 0.00},
            {-37.83, 1.50, -8.41},
            {-24.36, 1.50, 0.00}
        }

        constraintCards = getObjectsWithTag("Constraint")[1]
        constraintDeck = constraintCards.clone({position={-62.10, 2.20, -24.63}, rotation={0.00, 180.00, 180.00}})
        constraintDeck.locked = false
        cardsToDeal = {}
        for i = 1, constraintDeck.getQuantity() do
            card = constraintDeck.takeObject({position={-62.10, 2.20, -24.63}, rotation={0.00, 180.00, 180.00}})
            card.locked = false
            if (card.getName() == "A"
            or card.getName() == "B"
            or card.getName() == "C"
            or card.getName() == "D"
            or card.getName() == "E") then
                table.insert(cardsToDeal, card)
                card.addTag("Destroy")
            else
                card.destruct()
            end
        end
        shuffleInPlace(cardsToDeal)
        for num, card in ipairs(cardsToDeal) do
            card.setPosition(constraintPositions[num])
            card.setRotation({0.00, 180.00, 0.00})
        end

        MusicPlayer.setCurrentAudioclip({
            url = "https://files.brawlbox.co.uk/Tabletop%20Simulator/Bomb%20Busters/BB-Final_Mission-66.mp3",
            title = "Mission 66"
        })
        MusicPlayer.play()
        printToAll("Use the built-in music player to control the audio - select 'Music' on the toolbar at the top.")
    end
    dealWiresToHands(missionNum, piles)
end

-- blueHighest is the highest value of a blue wire, and in terms of the card, yellowNum of yellowTotal and redNum of redTotal
function sortWiresAndEquipment(piles, blueHighest, yellowNum, yellowTotal, yellowHighest, redNum, redTotal, redHighest)
    sortEquipment(missionNum, yellowNum)

    mainCopy = cloneAndPrepareDeck({"Wires", "Blue"}, {-92.12, 2.38, -1.60}, {0.00, 0.00, 0.00}, true)
    handCount = playerNum == 5 and 5 or 4
    nanoWireCounts = {5, 5, 4, 4, 3}
    for i = 1, handCount do
        table.insert(piles, {})
    end
    sortAllWires(mainCopy, yellowNum, yellowTotal, yellowHighest, redNum, redTotal, redHighest)
    destroyed = 0
    nanoCounter = 0
    for i = 1, mainCopy.getQuantity() do
        pileIx = ((i + handCount - destroyed - 1 - nanoCounter) % handCount) + 1
        wire = takeAndPrepareWire(mainCopy, {-82.12 + pileIx, 2.38, -1.60}, {0.00, 0.00, 180.00})
        if tonumber(wire.getDescription()) > blueHighest * 10 then
            wire.destruct()
            destroyed = destroyed + 1
        else
            wire.addTag("Destroy")
            if i <= nanoWireCounts[playerNum] and
            (missionNum == 43) then
                nano = getObjectsWithAllTags({"Nano", "Destroy"})[1]
                nanoPos = nano.getPosition()
                wire.setPosition({nanoPos[1] + -5, nanoPos[2] + 3.41, nanoPos[3] + 0.06})
                wire.setRotation({359.54, 180.20, 172.48})
                nanoCounter = nanoCounter + 1
            else
                table.insert(piles[pileIx], wire)
            end
        end
    end
    for num, pile in ipairs(piles) do
        if (missionNum == 20 or missionNum == 35 or missionNum == 56) then
            counter = 0
            wire = table.remove(pile)
            while missionNum == 35 and tonumber(wire.getDescription()) % 10 ~= 0 do
                table.insert(pile, wire)
                counter = counter + 1
                wire = table.remove(pile, #pile - counter)
            end
            table.sort(pile, function(a, b) return tonumber(a.getDescription()) < tonumber(b.getDescription()) end)
            table.insert(pile, wire)
        -- Mission 38: Special case for single wire - last wire stays on top
        elseif missionNum == 38 and num == 1 then
            wire = table.remove(pile)
            table.sort(pile, function(a, b) return tonumber(a.getDescription()) < tonumber(b.getDescription()) end)
            table.insert(pile, wire)
        -- Mission 64: Last two wires stay on top after sorting
        elseif missionNum == 64 then
            wire1 = table.remove(pile)
            wire2 = table.remove(pile)
            table.sort(pile, function(a, b) return tonumber(a.getDescription()) < tonumber(b.getDescription()) end)
            table.insert(pile, wire1)
            table.insert(pile, wire2)
        else
            table.sort(pile, function(a, b) return tonumber(a.getDescription()) < tonumber(b.getDescription()) end)
        end
    end
end

-- Sets up wire markers for specific missions (or prints wire info for mission 50)
function setupMarkers(revealedWires, num, total, color)
    -- Mission 50: Instead of placing markers, print wire information to all players
    if missionNum == 50 then
        table.sort(revealedWires, function(a, b) return tonumber(a.getDescription()) < tonumber(b.getDescription()) end)
        for _, wire in ipairs(revealedWires) do
            printToAll(string.format("One of the %s wires in play is %s.", color:lower(), wire.getName()))
        end
        return
    end
    local marker = getObjectsWithAllTags({"Marker", color})[1]
    local markerRotation = {}
    if num == total then
        markerRotation = {0.00, 180.00, 0.00}
    else
        markerRotation = {0.00, 180.00, 180.00}
    end
    local markerPositions = color == "Yellow" and yellowMarkerPositions or redMarkerPositions
    for _, wire in ipairs(revealedWires) do
        local clone = cloneWithStandardProps(marker, markerPositions[math.floor(tonumber(wire.getDescription())/10)], markerRotation, false)
    end
end

-- Sorts and reveals wires based on mission parameters and wire counts
function sortAllWires(mainCopy, yellowNum, yellowTotal, yellowHighest, redNum, redTotal, redHighest)
    -- Sort yellow wires
    if yellowNum > 0 then
        local yellowCopy = cloneAndPrepareDeck({"Wires", "Yellow"}, {-92.12, 2.38, -6.60}, {0.00, 0.00, 0.00}, true)
        local count = 0
        local yellowsRevealed = {}
        
        local function shouldDestructYellowWire(wire)
            local desc = tonumber(wire.getDescription())
            if desc > yellowHighest * 10 then
                return true
            end
            -- Special case for mission 46 with yellow wires
            if missionNum == 46 then
                local wireDesc = wire.getDescription()
                return wireDesc ~= "051" and wireDesc ~= "061" and wireDesc ~= "071" and wireDesc ~= "081"
            end
            return false
        end
        
        if yellowNum == yellowTotal then
            while count ~= yellowNum do
                local wire = takeAndPrepareWire(yellowCopy, {-92.12, 2.38, -1.60}, {0.00, 0.00, 0.00})
                if shouldDestructYellowWire(wire) then
                    wire.destruct()
                else
                    wire.putObject(mainCopy)
                    table.insert(yellowsRevealed, wire)
                    count = count + 1
                end
            end
        else
            local tempPile = yellowCopy.takeObject({position={-92.12, 2.38, -11.60}, rotation={0.00, 0.00, 0.00}, smooth=false})
            tempPile.addTag("Destroy")
            while tonumber(tempPile.getDescription()) > yellowHighest * 10 do
                tempPile.destruct()
                tempPile = yellowCopy.takeObject({position={-92.12, 2.38, -11.60}, rotation={0.00, 0.00, 0.00}, smooth=false})
                tempPile.addTag("Destroy")
            end
            table.insert(yellowsRevealed, tempPile)
            while count ~= yellowTotal - 1 do
                local wire = takeAndPrepareWire(yellowCopy, {-92.12, 2.38, -11.60}, {0.00, 0.00, 0.00})
                if tonumber(wire.getDescription()) > yellowHighest * 10 then
                    wire.destruct()
                else
                    table.insert(yellowsRevealed, wire)
                    tempPile = wire.putObject(tempPile)
                    count = count + 1
                end
            end
            tempPile.shuffle()
            count = 0
            while count ~= yellowNum do
                local wire = takeAndPrepareWire(tempPile, {-92.12, 2.38, -1.60}, {0.00, 0.00, 0.00})
                if shouldDestructYellowWire(wire) then
                    wire.destruct()
                else
                    wire.putObject(mainCopy)
                    count = count + 1
                end
            end
            tempPile.destruct()
        end
        yellowCopy.destruct()
        mainCopy.shuffle()
        setupMarkers(yellowsRevealed, yellowNum, yellowTotal, "Yellow")
    end
    
    -- Sort red wires
    if redNum > 0 then
        local redCopy = cloneAndPrepareDeck({"Wires", "Red"}, {-92.12, 2.38, -6.60}, {0.00, 0.00, 0.00}, true)
        local count = 0
        local redsRevealed = {}
        
        if redNum == redTotal then
            while count ~= redNum do
                local wire = takeAndPrepareWire(redCopy, {-92.12, 2.38, -1.60}, {0.00, 0.00, 0.00})
                if tonumber(wire.getDescription()) > redHighest * 10 then
                    wire.destruct()
                else
                    wire.putObject(mainCopy)
                    table.insert(redsRevealed, wire)
                    count = count + 1
                end
            end
        else
            local tempPile = redCopy.takeObject({position={-92.12, 2.38, -11.60}, rotation={0.00, 0.00, 0.00}, smooth=false})
            tempPile.locked = false
            while tonumber(tempPile.getDescription()) > redHighest * 10 do
                tempPile.destruct()
                tempPile = redCopy.takeObject({position={-92.12, 2.38, -11.60}, rotation={0.00, 0.00, 0.00}, smooth=false})
                tempPile.locked = false
                tempPile.addTag("Destroy")
            end
            table.insert(redsRevealed, tempPile)
            while count ~= redTotal - 1 do
                local wire = takeAndPrepareWire(redCopy, {-92.12, 2.38, -11.60}, {0.00, 0.00, 0.00})
                if tonumber(wire.getDescription()) > redHighest * 10 then
                    wire.destruct()
                else
                    table.insert(redsRevealed, wire)
                    tempPile = wire.putObject(tempPile)
                    count = count + 1
                end
            end
            tempPile.shuffle()
            count = 0
            while count ~= redNum do
                local wire = takeAndPrepareWire(tempPile, {-92.12, 2.38, -1.60}, {0.00, 0.00, 0.00})
                if tonumber(wire.getDescription()) > redHighest * 10 then
                    wire.destruct()
                else
                    wire.putObject(mainCopy)
                    count = count + 1
                end
            end
            tempPile.destruct()
        end
        redCopy.destruct()
        mainCopy.shuffle()
        setupMarkers(redsRevealed, redNum, redTotal, "Red")
    end
end

function dealWiresToHands(missionNum, piles)
    if missionNum == 41 then
        yellowNum = playerNum
        if yellowNum == 5 then
            yellowNum = 4
        end
        
        yellowCopy = cloneAndPrepareDeck({"Wires", "Yellow"}, {-92.12, 2.38, -6.60}, {0.00, 0.00, 0.00}, true)
        count = 0
        yellowsRevealed = {}
        ix = 1
        if playerNum == 5 then
            ix = 2
        end
        while count ~= yellowNum do
            wire = takeAndPrepareWire(yellowCopy, {-92.12, 2.38, -1.60}, {0.00, 0.00, 0.00})
            wire.setPosition(piles[ix][1].getPosition())
            table.insert(piles[ix], wire)
            table.sort(piles[ix], function(a, b) return tonumber(a.getDescription()) < tonumber(b.getDescription()) end)
            table.insert(yellowsRevealed, wire)
            count = count + 1
            ix = ix + 1
        end
        yellowCopy.destruct()
        setupMarkers(yellowsRevealed, yellowNum, yellowNum, "Yellow")
    elseif missionNum == 48 then
        yellowCopy = cloneAndPrepareDeck({"Wires", "Yellow"}, {-92.12, 2.38, -6.60}, {0.00, 0.00, 0.00}, true)
        count = 0
        ix = 1
        yellowsRevealed = {}
        while count ~= 3 do
            wire = takeAndPrepareWire(yellowCopy, {-92.12, 2.38, -1.60}, {0.00, 0.00, 0.00})
            wire.setPosition(piles[ix][1].getPosition())
            table.insert(piles[ix], wire)
            table.sort(piles[ix], function(a, b) return tonumber(a.getDescription()) < tonumber(b.getDescription()) end)
            table.insert(yellowsRevealed, wire)
            count = count + 1
            ix = ix + 1
            if playerNum == 3 then
                if (playerColors[ix] == "Blue" and contains(doubleHandColors, "Blue"))
                or (playerColors[ix] == "Green" and contains(doubleHandColors, "Green")) then
                    ix = ix + 1
                end
            end
        end
        yellowCopy.destruct()
        setupMarkers(yellowsRevealed, yellowNum, yellowNum, "Yellow")
    end
    noMoreDouble = false
    handsDoubled = 0
    for i = 1, playerNum do
        wirePositions0 = wireHandPositions0[playerColors[i]]
        outerWirePositions0 = wireOuterPositions0[playerColors[i]]
        tokenPositions0 = tokenHandPositions0[playerColors[i]]
        for j = 1, #piles[i + handsDoubled] do
            if ((missionNum == 38 and i == 1) or missionNum == 56) and j == #piles[i + handsDoubled] then
                piles[i + handsDoubled][j].setPosition(outerWirePositions0[1])
            elseif missionNum == 64 then
                if j == #piles[i + handsDoubled] then
                    piles[i + handsDoubled][j].setPosition(outerWirePositions0[1])
                elseif j == #piles[i + handsDoubled] - 1 then
                    piles[i + handsDoubled][j].setPosition(outerWirePositions0[2])
                else
                    piles[i + handsDoubled][j].setPosition(wirePositions0[j])
                end
            else
                piles[i + handsDoubled][j].setPosition(wirePositions0[j])
            end
            piles[i + handsDoubled][j].setRotation(wireRotations[playerColors[i]])
            piles[i + handsDoubled][j].flip()
            if (missionNum == 20 or missionNum == 35) and j == #piles[i + handsDoubled] then
                xToken = getObjectsWithTag("XToken")[1]
                clone = xToken.clone({position=tokenPositions0[j], rotation=tokenHandRotations[playerColors[i]]})
                clone.locked = false
                clone.addTag("Destroy")
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
                if missionNum == 56 and j == #piles[i + handsDoubled] then
                    piles[i + handsDoubled][j].setPosition(outerWirePositions1[1])
                elseif missionNum == 64 then
                    if j == #piles[i + handsDoubled] then
                        piles[i + handsDoubled][j].setPosition(outerWirePositions1[1])
                    elseif j == #piles[i + handsDoubled] - 1 then
                        piles[i + handsDoubled][j].setPosition(outerWirePositions1[2])
                    else
                        piles[i + handsDoubled][j].setPosition(wirePositions1[j])
                    end
                else
                    piles[i + handsDoubled][j].setPosition(wirePositions1[j])
                end
                piles[i + handsDoubled][j].setRotation(wireRotations[playerColors[i]])
                piles[i + handsDoubled][j].flip()
                if (missionNum == 20 or missionNum == 35) and j == #piles[i + handsDoubled] then
                    xToken = getObjectsWithTag("XToken")[1]
                    clone = xToken.clone({position=tokenPositions1[j], rotation=tokenHandRotations[playerColors[i]]})
                    clone.locked = false
                    clone.addTag("Destroy")
                end
            end
            if playerNum == 3 then
                noMoreDouble = true
            end
        end
    end
end

function sortEquipment(missionNum, yellowNum)
    if missionNum < 3
    or missionNum == 39 then return end
    equipmentCards = getObjectsWithTag("Equipment")
    equipRot = {0.00, 180.00, 0.00}
    equipNum = playerNum
    equipPos = equipmentPositions
    if missionNum == 15 then
        equipRot = {0.00, 180.00, 180.00}
    elseif missionNum == 18 then
        radar = nil
        for _, card in ipairs(equipmentCards) do
            if card.getName() == "General Radar" then
                radar = card
                break
            end
        end
        copy = radar.clone({position=equipmentPositions[3], rotation=equipRot})
        copy.locked = false
        copy.addTag("Destroy")
        return
    elseif missionNum == 23 then
        equipRot = {0.00, 180.00, 180.00}
        equipNum = 7
        equipPos = {
            {-14.68, 1.52, 5.49},
            {-14.68, 1.52, 5.49},
            {-14.68, 1.52, 5.49},
            {-14.68, 1.52, 5.49},
            {-14.68, 1.52, 5.49},
            {-14.68, 1.52, 5.49},
            {-14.68, 1.52, 5.49}
        }
    end
    for _, card in ipairs(equipmentCards) do
        clone = card.clone({position={-139.11, 2.14, -22.37}, rotation={0.00, 180.00, 0.00}, smooth=false})
        clone.locked = false
        if shouldExcludeEquipment(clone, missionNum, yellowNum) then
            clone.destruct()
        else
            clone.addTag("Destroy")
        end
    end
    equipmentToDeal = {}
    unsortedEquipment = getObjectsWithAllTags({"Equipment", "Destroy"})
    shuffleInPlace(unsortedEquipment)
    for i = 1, #unsortedEquipment do
        if i > equipNum then
            unsortedEquipment[i].addTag("Spare")
        else
            unsortedEquipment[i].setPosition({-121.70, 2.14, -16.00})
            table.insert(equipmentToDeal, unsortedEquipment[i])
        end
    end
    spareEquipment = getObjectsWithAllTags({"Equipment", "Spare"})
    if #equipmentToDeal > 1
    and (missionNum != 15) then
        table.sort(equipmentToDeal, function(a, b) return tonumber(a.getDescription()) < tonumber(b.getDescription()) end)
    end
    for i = 1, equipNum do
        if equipmentToDeal[i].getDescription() == "0" then
            setupSpareEquipment(spareEquipment[1], {24.35, 1.50, 5.49}, {0.00, 180.00, 180.00})
            setupSpareEquipment(spareEquipment[2], {24.35, 1.50, 5.49}, {0.00, 180.00, 180.00})
        end
        equipmentToDeal[i].setPositionSmooth(equipPos[i])
        equipmentToDeal[i].setRotation(equipRot)
    end
    toDestroy = getObjectsWithAllTags({"Equipment", "Spare"})
    for _, card in ipairs(toDestroy) do
        card.destruct()
    end
end

function moveTokens(missionNum)
    if missionNum == 21
    or missionNum == 33 then
        cloneAndPositionTokens("OddTokens", {-9.18, 1.49, -6.38})
        cloneAndPositionTokens("EvenTokens", {-4.59, 1.49, -6.38})
    elseif missionNum == 24
    or missionNum == 40 then
        cloneAndPositionTokens("x1Tokens", {-9.58, 1.49, -7.65})
        cloneAndPositionTokens("x2Tokens", {-6.88, 1.49, -5.20})
        cloneAndPositionTokens("x3Tokens", {-4.19, 1.49, -7.65})
    elseif missionNum == 58 then
        infoTokens = getObjectsWithTag("InfoTokens")
        table.sort(infoTokens, function(a, b) return tonumber(a.getName()) < tonumber(b.getName()) end)
        for num, token in ipairs(infoTokens) do
            if num > 26 then
                object = token.clone({position=infoTokenPositions[tonumber(token.getName())]})
                object.locked = false
                object.addTag("Destroy")
                newObject = object.setState(2)
                newObject.addTag("Destroy")
                newObject.setState(1)
            end
        end
    else
        infoTokens = getObjectsWithTag("InfoTokens")
        table.sort(infoTokens, function(a, b) return tonumber(a.getName()) < tonumber(b.getName()) end)
        for num, token in ipairs(infoTokens) do
            if missionNum < 55 and num == 27 then
                break
            end
            object = token.clone({position=infoTokenPositions[tonumber(token.getName())]})
            object.locked = false
            object.addTag("Destroy")
            newObject = object.setState(2)
            newObject.addTag("Destroy")
            newObject.setState(1)
        end
    end
    if missionNum ~= 52 then
        notEquals = getObjectsWithTag("NotEquals")[1]
        clone = notEquals.clone({position={-9.86, 1.61, -10.10}, rotation={0.00, 180.00, 0.00}})
        clone.locked = false
        clone.addTag("Destroy")
        equals = getObjectsWithTag("Equals")[1]
        clone = equals.clone({position={-3.81, 1.61, -10.10}, rotation={0.00, 180.00, 0.00}})
        clone.locked = false
        clone.addTag("Destroy")
    end
end

function moveMissionCard(missionNum)
    missionCard = getObjectsWithTag("Mission")[1].clone({position = missionPosition, rotation = missionRotation})
    missionCard.locked = false
    missionCard.addTag("Destroy")
    missionCard.setName(missionNum)
    params = {
        face = string.format("https://files.timwi.de/Tabletop Simulator/Bomb Busters/Missions/Mission %d Front.png", missionNum),
        back = string.format("https://files.timwi.de/Tabletop Simulator/Bomb Busters/Missions/Mission %d Back.png", missionNum)
    }
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