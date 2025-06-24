---------------
--- GLOBALS ---
---------------

itemZone = getObjectFromGUID("f55aed")

missionFaceUrls = {
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%201%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%202%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%203%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%204%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%205%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%206%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%207%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%208%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%209%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2010%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2011%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2012%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2013%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2014%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2015%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2016%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2017%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2018%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2019%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2020%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2021%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2022%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2023%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2024%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2025%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2026%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2027%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2028%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2029%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2030%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2031%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2032%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2033%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2034%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2035%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2036%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2037%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2038%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2039%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2040%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2041%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2042%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2043%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2044%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2045%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2046%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2047%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2048%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2049%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2050%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2051%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2052%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2053%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2054%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2055%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2056%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2057%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2058%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2059%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2060%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2061%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2062%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2063%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2064%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2065%20Front.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2066%20Front.png"
}

missionBackUrls = {
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%201%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%202%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%203%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%204%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%205%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%206%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%207%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%208%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%209%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2010%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2011%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2012%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2013%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2014%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2015%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2016%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2017%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2018%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2019%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2020%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2021%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2022%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2023%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2024%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2025%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2026%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2027%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2028%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2029%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2030%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2031%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2032%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2033%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2034%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2035%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2036%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2037%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2038%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2039%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2040%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2041%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2042%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2043%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2044%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2045%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2046%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2047%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2048%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2049%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2050%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2051%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2052%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2053%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2054%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2055%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2056%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2057%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2058%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2059%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2060%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2061%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2062%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2063%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2064%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2065%20Back.png",
    "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Missions/Mission%2066%20Back.png"
}

playerHandPositions = {
    Blue = {-20.00, 5.00, 37.50},
    Green = {20.00, 5.00, 37.50},
    Purple = {-33.00, 5.00, -37.50},
    Red = {0.00, 5.00, -37.50},
    White = {33.00, 5.00, -37.50}
}

missionPosition = {-16.77, 1.52, -10.55}

missionRotation = {0.00, 180.00, 180.00}

numberTokenPositions = {
    {-18.01, 1.61, -1.09},
    {-14.76, 1.61, -1.09},
    {-11.52, 1.61, -1.09},
    {-8.22, 1.61, -1.09},
    {-4.70, 1.61, -1.09},
    {-1.47, 1.61, -1.09},
    {1.78, 1.61, -1.09},
    {5.10, 1.61, -1.09},
    {8.55, 1.61, -1.09},
    {11.79, 1.61, -1.09},
    {15.14, 1.61, -1.09},
    {18.34, 1.61, -1.09}
}

currentDialNum = 5

doubleHandColors = {}

dialRotations = {
    [0] = {0.00, 283.00, 0.00},
    [1] = {0.00, 233.00, 0.00},
    [2] = {0.00, 191.00, 0.00},
    [3] = {0.00, 150.00, 0.00},
    [4] = {0.00, 108.00, 0.00},
    [5] = {0.00, 67.00, 0.00}
}

infoTokenPositions = {
    {-10.71, 1.61, -5.20},
    {-9.18, 1.61, -5.20},
    {-7.65, 1.61, -5.20},
    {-6.12, 1.61, -5.20},
    {-4.59, 1.61, -5.20},
    {-3.06, 1.61, -5.20},
    {-10.71, 1.61, -7.65},
    {-9.18, 1.61, -7.65},
    {-7.65, 1.61, -7.65},
    {-6.12, 1.61, -7.65},
    {-4.59, 1.61, -7.65},
    {-3.06, 1.61, -7.65},
    {-6.89, 1.61, -10.10}
}

yellowMarkerPositions = {
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

redMarkerPositions = {
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

characterPositions = {
    Blue    = {-24.28, 1.50, 19.00},
    Green   = {24.28, 1.50, 19.00},
    Purple  = {-33.00, 1.50, -19.00},
    Red     = {0.00, 1.50, -19.00},
    White   = {33.00, 1.50, -19.00}
}

characterRotations = {
    Blue    = {0.00, 0.00, 0.00},
    Green   = {0.00, 0.00, 0.00},
    Purple  = {0.00, 180.00, 0.00},
    Red     = {0.00, 180.00, 0.00},
    White   = {0.00, 180.00, 0.00},
}

blueWiresPositions0 = {
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

blueOuterWiresPositions0 = {
    {-23.21, 3.15, 30.00},
    {-2.21, 3.15, 30.00}
}

blueWiresPositions1 = {
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

blueOuterWiresPositions1 = {
    {-46.35, 3.15, 30.00},
    {-25.35, 3.15, 30.00}
}

greenWiresPositions0 = {
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

greenOuterWiresPositions0 = {
    {2.21, 3.15, 30.00},
    {23.21, 3.15, 30.00}
}

greenWiresPositions1 = {
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

greenOuterWiresPositions1 = {
    {25.35, 3.15, 30.00},
    {46.35, 3.15, 30.00}
}

purpleWiresPositions = {
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

purpleOuterWiresPositions = {
    {-22.50, 3.15, -30.00},
    {-43.50, 3.15, -30.00}
}

redWiresPositions = {
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

redOuterWiresPositions = {
    {10.50, 3.15, -30.00},
    {-10.50, 3.15, -30.00}
}

whiteWiresPositions = {
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

whiteOuterWiresPositions = {
    {43.50, 3.15, -30.00},
    {22.50, 3.15, -30.00}
}

wireHandPositions0 = {
    Blue    = blueWiresPositions0,
    Green   = greenWiresPositions0,
    Purple  = purpleWiresPositions,
    Red     = redWiresPositions,
    White   = whiteWiresPositions
}

wireHandPositions1 = {
    Blue    = blueWiresPositions1,
    Green   = greenWiresPositions1,
}

wireOuterPositions0 = {
    Blue    = blueOuterWiresPositions0,
    Green   = greenOuterWiresPositions0,
    Purple  = purpleOuterWiresPositions,
    Red     = redOuterWiresPositions,
    White   = whiteOuterWiresPositions
}

wireOuterPositions1 = {
    Blue    = blueOuterWiresPositions1,
    Green   = greenOuterWiresPositions1
}

wireRotations = {
    Blue    = {0.00, 180.00, 180.00},
    Green   = {0.00, 180.00,180.00},
    Purple  = {0.00, 0.00, 180.00},
    Red     = {0.00, 0.00, 180.00},
    White   = {0.00, 0.00, 180.00}
}

blueTokenPositions0 = {
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

blueTokenOuterPositions0 = {
    {-23.21, 1.50, 26.80},
    {-2.21, 1.50, 26.80}
}

blueTokenPositions1 = {
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

blueTokenOuterPositions1 = {
    {-46.35, 1.50, 26.80},
    {-25.35, 1.50, 26.80}
}

greenTokenPositions0 = {
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

greenTokenOuterPositions0 = {
    {2.21, 1.50, 26.80},
    {23.21, 1.50, 26.80}
}

greenTokenPositions1 = {
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

greenTokenOuterPositions1 = {
    {25.35, 1.50, 26.80},
    {46.35, 1.50, 26.80}
}

purpleTokenPositions = {
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

purpleTokenOuterPositions = {
    {-22.50, 1.50, -26.80},
    {-43.50, 1.50, -26.80}
}

redTokenPositions = {
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

redTokenOuterPositions = {
    {10.50, 1.50, -26.80},
    {-10.50, 1.50, -26.80}
}

whiteTokenPositions = {
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

whiteTokenOuterPositions = {
    {43.50, 1.50, -26.80},
    {22.50, 1.50, -26.80}
}

tokenHandPositions0 = {
    Blue    = blueTokenPositions0,
    Green   = greenTokenPositions0,
    Purple  = purpleTokenPositions,
    Red     = redTokenPositions,
    White   = whiteTokenPositions
}

tokenHandPositions1 = {
    Blue    = blueTokenPositions1,
    Green   = greenTokenPositions1
}

tokenOuterPositions0 = {
    Blue    = blueTokenOuterPositions0,
    Green   = greenTokenOuterPositions0,
    Purple  = purpleTokenOuterPositions,
    Red     = redTokenOuterPositions,
    White   = whiteTokenOuterPositions
}

tokenOuterPositions1 = {
    Blue    = blueTokenOuterPositions1,
    Green   = greenTokenOuterPositions1
}

tokenHandRotations = {
    Blue    = {0.00, 180.00, 0.00},
    Green   = {0.00, 180.00, 0.00},
    Purple  = {0.00, 0.00, 0.00},
    Red     = {0.00, 0.00, 0.00},
    White   = {0.00, 0.00, 0.00}
}

equipmentPositions = {
    {-14.58, 1.52, 5.49},
    {-7.29, 1.52, 5.72},
    {0.04, 1.52, 5.39},
    {7.35, 1.52, 5.62},
    {14.66, 1.52, 5.45}
}

function onLoad()
    self.createButton({
        click_function = "startMission",
        function_owner = self,
        label          = "Start Mission",
        scale          = { 0.5, 0.5, 0.5 },
        position       = { 0, 0.21, 0.6 },
        rotation       = { 0, 180, 0 },
        width          = 2000,
        height         = 423,
        font_size      = 300
    })

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

-----------------------
--- SETUP FUNCTIONS ---
-----------------------

function startMission()
    MusicPlayer.pause()

    players = Player.getPlayers()
    allPlayerColors = {
        "Blue",
        "Green",
        "White",
        "Red",
        "Purple"
    }
    playerColors = {}
    playerNum = 0
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
    missionNum = self.getValue()
    if missionNum < 1 then
        self.setValue(1)
        missionNum = 1
    elseif missionNum > 66 then
        self.setValue(66)
        missionNum = 66
    end
    --playerColors is modified by these two functions
    doubleHandColors = {}
    sortPlayerColors(playerNum, playerColors) --changed for playerNum
    shuffledPlayers = sortCharacters(missionNum, playerNum, playerColors) --shuffled
    captainColor = shuffledPlayers[1]
    if missionNum == 34 then
        captainColor = playerColors[math.random(1, playerNum)]
        printToAll(string.format("The captain of this mission is %s!", captainColor))
    end
    while playerColors[1] ~= captainColor do
        wrap(playerColors, 1)
    end

    if missionNum < 9 then
        ruleCard = getObjectsWithTag("RuleA")[1]
        ruleCard.setRotation({0.00, 270.00, 180.00})
        ruleCard = getObjectsWithTag("RuleB")[1]
        ruleCard.setRotation({0.00, 270.00, 180.00})
        ruleCard = getObjectsWithTag("RuleC")[1]
        ruleCard.setRotation({0.00, 270.00, 180.00})
    elseif missionNum < 31 then
        ruleCard = getObjectsWithTag("RuleA")[1]
        ruleCard.setRotation({0.00, 270.00, 0.00})
        ruleCard = getObjectsWithTag("RuleB")[1]
        ruleCard.setRotation({0.00, 270.00, 180.00})
        ruleCard = getObjectsWithTag("RuleC")[1]
        ruleCard.setRotation({0.00, 270.00, 180.00})
    elseif missionNum < 55 then
        ruleCard = getObjectsWithTag("RuleA")[1]
        ruleCard.setRotation({0.00, 270.00, 0.00})
        ruleCard = getObjectsWithTag("RuleB")[1]
        ruleCard.setRotation({0.00, 270.00, 0.00})
        ruleCard = getObjectsWithTag("RuleC")[1]
        ruleCard.setRotation({0.00, 270.00, 180.00})
    else
        ruleCard = getObjectsWithTag("RuleA")[1]
        ruleCard.setRotation({0.00, 270.00, 0.00})
        ruleCard = getObjectsWithTag("RuleB")[1]
        ruleCard.setRotation({0.00, 270.00, 0.00})
        ruleCard = getObjectsWithTag("RuleC")[1]
        ruleCard.setRotation({0.00, 270.00, 0.00})
    end

    moveMissionCard(missionNum)
    moveTokens(missionNum)
    adjustDial(missionNum, playerNum)
    prepareWiresAndMarkers(missionNum, playerNum, playerColors)
end

function sortPlayerColors(playerNum, playerColors)
    if (contains(playerColors, "Blue") or contains(playerColors, "Green") and playerNum == 3)
    and (contains(playerColors, "Blue") and contains(playerColors, "Green") and playerNum == 2) then
        return
    else
        players = {}
        for _, p in ipairs(Player.getPlayers()) do
            if p.color ~= "Black" then
                table.insert(players, p)
            end
        end
        blueGreen = {"Blue", "Green"}
        if playerColors[2] == "Blue" then
            blueGreen = {"Green", "Blue"}
        end
        if playerNum < 4 then
            playerColors[1] = blueGreen[1]
            players[1].changeColor(blueGreen[1])
            table.insert(doubleHandColors, blueGreen[1])
        end
        if playerNum == 2 then
            playerColors[2] = blueGreen[2]
            players[2].changeColor(blueGreen[2])
            table.insert(doubleHandColors, blueGreen[2])
        end
    end
end

function sortCharacters(missionNum, playerNum, playerColors)
    if missionNum == 34 or missionNum == 65 then
        return playerColors
    end
    shuffledPlayers = shuffle(playerColors)
    captainCard = getObjectsWithTag("Captain")[1].clone({position={-130.02, 2.17, 0.00}, smooth=false})
    captainCard.locked = false
    if missionNum == 34 then
        captainCard.setPosition(playerHandPositions[shuffledPlayers[1]])
        captainCard.setRotation(playerHandPositions[shuffledPlayers[1]])
    else
        captainCard.setPosition(characterPositions[shuffledPlayers[1]])
        captainCard.setRotation(characterRotations[shuffledPlayers[1]])
    end
    captainCard.addTag("Destroy")
    if missionNum == 27 then
        captainCard.flip()
    elseif missionNum == 28 then
        captainCard.destruct()
    end
    characterCards = getObjectsWithAllTags({"Character", "Pack0"})[2].clone({position={-130.02, 2.17, 0.00}, smooth=false})
    characterCards.locked = false
    if missionNum > 30 and missionNum ~= 58 then
        clone = getObjectsWithAllTags({"Character", "Pack3"})[1].clone({position={-130.02, 2.17, 0.00}, smooth=false})
        clone.locked = false   
        for ix = 1, clone.getQuantity() do
            card = clone.takeObject({position={43.33, 1.50, 12.65},rotation={0.00, 270.00, 0.00}})
            card.locked = false
            card.addTag("Destroy")
            if card.getName() == "X or Y ray"
            and (missionNum == 44
            or missionNum == 45
            or missionNum == 47
            or missionNum == 49
            or missionNum == 51
            or missionNum == 54
            or missionNum == 59
            or missionNum == 63
            or missionNum == 65) then
                card.destruct()
                return
            end
        end
    end 
    characterCards.shuffle()
    for ix = 1, characterCards.getQuantity() do
        if ix > playerNum - 1 then
            del = characterCards.takeObject({position={-130.02, 2.17, -20.00}, smooth=false})
            del.destruct()
        else
            if missionNum == 34 then
                card = characterCards.takeObject({position=playerHandPositions[shuffledPlayers[ix + 1]], rotation=characterRotations[shuffledPlayers[ix + 1]]})
                card.locked = false
            else
                card = characterCards.takeObject({position=characterPositions[shuffledPlayers[ix + 1]], rotation=characterRotations[shuffledPlayers[ix + 1]]})
                card.locked = false
            end
            card.addTag("Destroy")
            if missionNum == 27 then
                card.flip()
            end
        end
    end
    return shuffledPlayers
end

function prepareWiresAndMarkers(missionNum, playerNum, playerColors)
    piles = {}
    if missionNum == 1 then
        sortWiresAndEquipment(piles, playerNum, 6, 0, 0, 0, 0, 0, 0)
        bag = getObjectsWithTag("Validation")[1]
        for i = 7, 12 do
            clone = bag.takeObject({position=numberTokenPositions[i], rotation={0.00, 180.00, 0.00}})
        end
    elseif missionNum == 2 then
        sortWiresAndEquipment(piles, playerNum, 8, 2, 2, 8, 0, 0, 8)
        bag = getObjectsWithTag("Validation")[1]
        for i = 9, 12 do
            clone = bag.takeObject({position=numberTokenPositions[i], rotation={0.00, 180.00, 0.00}})
        end
    elseif missionNum == 3 then
        sortWiresAndEquipment(piles, playerNum, 10, 0, 0, 10, 1, 1, 10)
        bag = getObjectsWithTag("Validation")[1]
        for i = 11, 12 do
            clone = bag.takeObject({position=numberTokenPositions[i], rotation={0.00, 180.00, 0.00}})
        end
    elseif missionNum == 4 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, playerNum, 12, 4, 4, 12, 1, 1, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 2, 2, 12, 1, 1, 12)
        end
    elseif missionNum == 5 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, playerNum, 12, 2, 3, 12, 2, 2, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 2, 3, 12, 1, 1, 12)
        end
    elseif missionNum == 6 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, playerNum, 12, 4, 4, 12, 2, 2, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 4, 4, 12, 1, 1, 12)
        end
    elseif missionNum == 7 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 1, 3, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 1, 2, 12)
        end
    elseif missionNum == 8 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, playerNum, 12, 4, 4, 12, 1, 3, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 2, 3, 12, 1, 2, 12)
        end
    elseif missionNum == 9 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, playerNum, 12, 4, 4, 12, 2, 2, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 2, 2, 12, 1, 1, 12)
        end
        setupSequence(0)
    elseif missionNum == 10 then
        sortWiresAndEquipment(piles, playerNum, 12, 4, 4, 12, 1, 1, 12)
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
            sortWiresAndEquipment(piles, playerNum, 12, 4, 4, 12, 0, 0, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 2, 2, 12, 0, 0, 12)
        end
    elseif missionNum == 12 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, playerNum, 12, 4, 4, 12, 2, 2, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 4, 4, 12, 1, 1, 12)
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
        sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 0, 0, 12)
        
        redWireDeck = getObjectsWithAllTags({"Wires", "Red"})[1]
        redCopy = redWireDeck.clone({position={-92.12, 2.38, -6.60}, rotation={0.00, 0.00, 0.00}, smooth=false})
        redCopy.locked = false
        redCopy.shuffle()
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
        setupRedMarkers(redsRevealed, 3, 3)
        for _, pile in ipairs(piles) do
            table.sort(pile, function(a, b) return tonumber(a.getDescription()) < tonumber(b.getDescription()) end)
        end
        chooseRandomInfo(playerColors, false)
    elseif missionNum == 14 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, playerNum, 12, 4, 4, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 2, 3, 12, 2, 2, 12)
        end
    elseif missionNum == 15 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 2, 3, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 1, 3, 12)
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
            sortWiresAndEquipment(piles, playerNum, 12, 4, 4, 12, 2, 2, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 2, 3, 12, 1, 1, 12)
        end
        setupSequence(1)
    elseif missionNum == 17 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 2, 3, 12)
        end
    elseif missionNum == 18 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 2, 2, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 3, 3, 12)
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
        sortWiresAndEquipment(piles, playerNum, 12, 2, 3, 12, 1, 1, 12)
        MusicPlayer.setCurrentAudioclip({
            url = "https://pegasusna.com/media/music/ff/cf/6a/BB-Final_Mission-19.mp3",
            title = "Mission 19"
        })
        MusicPlayer.play()
        printToAll("Use the built-in music player to control the audio - select 'Music' on the toolbar at the top.")
    elseif missionNum == 20 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, playerNum, 12, 4, 4, 12, 2, 3, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 2, 2, 12, 2, 2, 12)
        end
    elseif missionNum == 21 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 2, 2, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 1, 2, 12)
        end
    elseif missionNum == 22 then
        sortWiresAndEquipment(piles, playerNum, 12, 4, 4, 12, 1, 1, 12)
    elseif missionNum == 23 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 2, 3, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 1, 3, 12)
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
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 2, 2, 12)
        end
    elseif missionNum == 26 then
        sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 2, 2, 12)
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
        sortWiresAndEquipment(piles, playerNum, 12, 4, 4, 12, 1, 1, 12)
    elseif missionNum == 28 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, playerNum, 12, 4, 4, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 4, 4, 12, 2, 2, 12)
        end
    elseif missionNum == 29 then
        sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 3, 3, 12)
        numberCards = getObjectsWithTag("Numbers")[1]
        cardsToDeal = numberCards.clone({position={-24.35, 1.56, 4.60}, rotation={0.00, 180.00, 180.00}})
        cardsToDeal.locked = false
        cardsToDeal.shuffle()
        isBlueGreen = 1
        for i = 1, playerNum do
            if playerColors[i] == "Blue" or playerColors[i] == "Green" then
                isBlueGreen = -1
            end
            cardCount = 2
            if i == playerNum then
                cardCount = 3
            end
            for j = 1, cardCount do
                card = cardsToDeal.takeObject({position={
                    characterPositions[playerColors[i]][1] + (7 * isBlueGreen),
                    characterPositions[playerColors[i]][2],
                    characterPositions[playerColors[i]][3]
                }, rotation={0.00, characterRotations[playerColors[i]][2], 180.00}})
                card.locked = false
                card.addTag("Destroy")
            end
        end
        for i = 1, cardsToDeal.getQuantity() do
            card = cardsToDeal.takeObject({position={-24.35, 1.56, 4.60}, rotation={0.00, 180.00, 180.00}})
            card.locked = false
            card.addTag("Destroy")
        end
    elseif missionNum == 30 then
        sortWiresAndEquipment(piles, playerNum, 12, 4, 4, 12, 1, 2, 12)
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
            url = "https://pegasusna.com/media/music/47/95/46/BB-Final_Mission-30.mp3",
            title = "Mission 30"
        })
        MusicPlayer.play()
        printToAll("Use the built-in music player to control the audio - select 'Music' on the toolbar at the top.")
    elseif missionNum == 31 then
        sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 2, 3, 12)
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
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 2, 2, 12)
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
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 2, 3, 12)
        end
    elseif missionNum == 34 then
        if playerNum < 3 then
            printToAll("Mission cannot be played with only 2 players.")
            return
        end
        sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 1, 1, 12)
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
            card.setPosition(playerHandPositions[playerColors[num]])
            card.setRotation(characterRotations[playerColors[num]])
        end
    elseif missionNum == 35 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, playerNum, 12, 4, 4, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 4, 4, 12, 2, 3, 12)
        end
    elseif missionNum == 36 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, playerNum, 12, 4, 4, 12, 2, 3, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 2, 2, 12, 1, 3, 12)
        end
        numberCardPositions = {
            {-35.47, 1.50, -12.44},
            {-35.47, 1.50, -6.22},
            {-35.46, 1.50, 0.00},
            {-35.47, 1.50, 6.22},
            {-35.47, 1.50, 12.44}
        }
        numberCards = getObjectsWithTag("Numbers")[1]
        cardsToDeal = numberCards.clone({position={-82.10, 2.20, -24.63}})
        cardsToDeal.locked = false
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
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 2, 3, 12)
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
            sortWiresAndEquipment(piles, playerNum, 12, 4, 4, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 4, 4, 12, 2, 2, 12)
        end
    elseif missionNum == 39 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, playerNum, 12, 4, 4, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 4, 4, 12, 2, 3, 12)
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
        chooseRandomInfo(playerColors, false)
    elseif missionNum == 40 then
        sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 3, 3, 12)
    elseif missionNum == 41 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 2, 3, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 1, 3, 12)
        end
        chooseRandomInfo(playerColors, true)
    elseif missionNum == 42 then
        sortWiresAndEquipment(piles, playerNum, 12, 4, 4, 12, 1, 3, 12)

        MusicPlayer.setCurrentAudioclip({
            url = "https://pegasusna.com/media/music/17/f4/b8/BB-Final_Mission-42.mp3",
            title = "Mission 42"
        })
        MusicPlayer.play()
        printToAll("Use the built-in music player to control the audio - select 'Music' on the toolbar at the top.")
    elseif missionNum == 43 then
        setupNano(numberTokenPositions[1], 1)
        sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 3, 3, 12)
    elseif missionNum == 44 then
        sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 1, 3, 12)

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
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 2, 2, 12)
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
        sortWiresAndEquipment(piles, playerNum, 12, 4, 4, 12, 0, 0, 12)
    elseif missionNum == 47 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 2, 3, 12)
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
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 2, 2, 12)
        end
    elseif missionNum == 49 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 2, 2, 12)
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
            sortWiresAndEquipment(piles, playerNum, 12, 4, 4, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 2, 2, 12, 2, 2, 12)
        end
    elseif missionNum == 51 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 2, 2, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 1, 1, 12)
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
            sortWiresAndEquipment(piles, playerNum, 12, 4, 4, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 3, 3, 12)
        end
    elseif missionNum == 53 then
        setupNano({-20.22, 2.02, -1.16}, 1)
        if playerNum < 3 then
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 2, 2, 12)
        end
    elseif missionNum == 54 then
        sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 0, 0, 12)
        redWireDeck = getObjectsWithAllTags({"Wires", "Red"})[1]
        wires = redWireDeck.clone({position={-16.78, 1.59, -14.52}, rotation={0.00, 90.00, 0.00}})
        wires.locked = false
        wires.shuffle()
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
            url = "https://pegasusna.com/media/music/a2/35/47/BB-Final_Mission-54ZXt2xCw76gcEn.mp3",
            title = "Mission 54"
        })
        MusicPlayer.play()
        printToAll("Use the built-in music player to control the audio - select 'Music' on the toolbar at the top.")
    elseif missionNum == 55 then
        adjustDial(missionNum, 1)
        if playerNum < 3 then
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 2, 3, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 2, 2, 12)
        end
        challengePositions = {
            {-39.31, 1.50, 0.00},
            {-39.31, 1.50, -7.26},
            {-39.31, 1.50, 7.26},
            {-39.31, 1.50, -14.53},
            {-39.31, 1.50, 14.53}
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
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 2, 3, 12)
        end
    elseif missionNum == 57 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 2, 2, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 1, 1, 12)
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
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 2, 2, 12)
        end
    elseif missionNum == 59 then
        if playerNum < 3 then
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 2, 3, 12)
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
                setupNano(cardPositions[i], 1)
            end
            numberCards[i].setPositionSmooth(cardPositions[i])
            numberCards[i].setRotation({0.00, 180.00, 0.00})
        end
    elseif missionNum == 60 then
        adjustDial(missionNum, 1)
        if playerNum < 3 then
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 2, 3, 12)
        end
        challengePositions = {
            {-39.31, 1.50, -14.53},
            {-39.31, 1.50, -7.26},
            {-39.31, 1.50, 0.00},
            {-39.31, 1.50, 7.26},
            {-39.31, 1.50, 14.53}
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
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 2, 2, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 1, 1, 12)
        end
        constraintCards = getObjectsWithTag("Constraint")[1]
        constraintDeck = constraintCards.clone({position={-24.35, 1.56, 4.60}, rotation={0.00, 180.00, 180.00}})
        constraintDeck.locked = false
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
                table.insert(cardsToDeal, card)
            end
        end
        shuffleInPlace(cardsToDeal)
        if playerNum ~= 5 then
            card = table.remove(cardsToDeal)
            card.destruct()
        end
        for i = 1, playerNum do
            if playerColors[i] == "Blue" or playerColors[i] == "Green" then
                isBlueGreen = -1
            end
            for j = 1, playerNum do
                if i == 1 then
                    if playerNum == 2 then
                        cardsToDeal[j].setPosition({
                            characterPositions[playerColors[i]][1],
                            characterPositions[playerColors[i]][2] + 1,
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
                            characterPositions[playerColors[i]][2] + 1,
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
                        characterPositions[playerColors[i]][2] + 1,
                        characterPositions[playerColors[i]][3] - (3 * isBlueGreen)
                    })
                    cardsToDeal[j].setRotation({0.00, characterRotations[playerColors[i]][2], 0.00})
                end
            end
        end
    elseif missionNum == 62 then
        adjustDial(missionNum, 1)
        if playerNum < 3 then
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 2, 2, 12)
        end
        numberPositions = {
            {-37.95, 1.50, -11.89},
            {-37.95, 1.50, -5.94},
            {-37.95, 1.50, 0.00},
            {-37.95, 1.50, 5.94},
            {-37.95, 1.50, 11.89}
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
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 3, 3, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 2, 2, 12)
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
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 2, 2, 12)
        else
            sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 1, 1, 12)
        end
    elseif missionNum == 65 then
        if playerNum < 3 then
            printToAll("Mission cannot be played with only 2 players.")
            return
        end
        sortWiresAndEquipment(piles, playerNum, 12, 0, 0, 12, 3, 3, 12)
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
        sortWiresAndEquipment(piles, playerNum, 12, 2, 2, 12, 2, 2, 12)
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
            url = "https://pegasusna.com/media/music/7a/66/cf/BB-Final_Mission-66.mp3",
            title = "Mission 66"
        })
        MusicPlayer.play()
        printToAll("Use the built-in music player to control the audio - select 'Music' on the toolbar at the top.")
    end
    dealWiresToHands(missionNum, playerNum, playerColors, piles)
end

-- blueHighest is the highest value of a blue wire, and in terms of the card, yellowNum of yellowTotal and redNum of redTotal
function sortWiresAndEquipment(piles, playerNum, blueHighest, yellowNum, yellowTotal, yellowHighest, redNum, redTotal, redHighest)
    sortEquipment(missionNum, playerNum, yellowNum)

    blueWireDeck = getObjectsWithAllTags({"Wires", "Blue"})[1]
    mainCopy = blueWireDeck.clone({position={-92.12, 2.38, -1.60}, rotation={0.00, 0.00, 0.00}, smooth=false})
    mainCopy.locked = false
    mainCopy.shuffle()
    handCount = playerNum == 5 and 5 or 4
    nanoWireCounts = {5, 5, 4, 4, 3}
    for i = 1, handCount do
        table.insert(piles, {})
    end
    sortYellows(mainCopy, yellowNum, yellowTotal, yellowHighest)
    sortReds(mainCopy, redNum, redTotal, redHighest)
    destroyed = 0
    for i = 1, mainCopy.getQuantity() do
        pileIx = ((i + handCount - destroyed - 1) % handCount) + 1
        wire = mainCopy.takeObject({position={-82.12 + pileIx, 2.38, -1.60}, rotation={0.00, 0.00, 180.00}, smooth=false})
        wire.locked = false
        if tonumber(wire.getDescription()) > blueHighest * 10 then
            wire.destruct()
            destroyed = destroyed + 1
        else
            wire.addTag("Destroy")
            if i <= nanoWireCounts[playerNum] and
            (missionNum == 43) then
                nano = getObjectsWithAllTags({"Nano", "Destroy"})[1]
                nanoPos = nano.getPosition()
                wire.setPosition({nanoPos[1] + 0.19, nanoPos[2] + 3.41, nanoPos[3] + 0.06})
                wire.setRotation({359.54, 180.20, 172.48})
            else
                table.insert(piles[pileIx], wire)
            end
        end
    end
    for num, pile in ipairs(piles) do
        if (missionNum == 20 or missionNum == 35 or missionNum == 38 or missionNum == 56) then
            wire = table.remove(pile)
            table.sort(pile, function(a, b) return tonumber(a.getDescription()) < tonumber(b.getDescription()) end)
            table.insert(pile, wire)
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

function sortYellows(mainCopy, yellowNum, yellowTotal, yellowHighest)
    if yellowNum == 0 then return end
    yellowWireDeck = getObjectsWithAllTags({"Wires", "Yellow"})[1]
    yellowCopy = yellowWireDeck.clone({position={-92.12, 2.38, -6.60}, rotation={0.00, 0.00, 0.00}, smooth=false})
    yellowCopy.locked = false
    yellowCopy.addTag("Destroy")
    yellowCopy.shuffle()
    count = 0
    yellowsRevealed = {}
    if yellowNum == yellowTotal then
        while count ~= yellowNum do
            wire = yellowCopy.takeObject({position={-92.12, 2.38, -1.60}, rotation={0.00, 0.00, 0.00}, smooth=false})
            wire.locked = false
            wire.addTag("Destroy")
            if tonumber(wire.getDescription()) > yellowHighest * 10
            or (missionNum == 46
                and wire.getDescription() != "051"
                and wire.getDescription() != "061"
                and wire.getDescription() != "071"
                and wire.getDescription() != "081") then
                wire.destruct()
            else
                wire.putObject(mainCopy)
                table.insert(yellowsRevealed, wire)
                count = count + 1
            end
        end
    else
        tempPile = yellowCopy.takeObject({position={-92.12, 2.38, -11.60}, rotation={0.00, 0.00, 0.00}, smooth=false})
        tempPile.addTag("Destroy")
        while tonumber(tempPile.getDescription()) > yellowHighest * 10 do
            tempPile.destruct()
            tempPile = yellowCopy.takeObject({position={-92.12, 2.38, -11.60}, rotation={0.00, 0.00, 0.00}, smooth=false})
            tempPile.addTag("Destroy")
        end
        table.insert(yellowsRevealed, tempPile)
        while count ~= yellowTotal - 1 do
            wire = yellowCopy.takeObject({position={-92.12, 2.38, -11.60}, rotation={0.00, 0.00, 0.00}, smooth=false})
            wire.locked = false
            wire.addTag("Destroy")
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
            wire = tempPile.takeObject({position={-92.12, 2.38, -1.60}, rotation={0.00, 0.00, 0.00}, smooth=false})
            wire.locked = false
            wire.addTag("Destroy")
            if tonumber(wire.getDescription()) > yellowHighest * 10 then
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
    setupYellowMarkers(yellowsRevealed, yellowNum, yellowTotal)
end

function setupYellowMarkers(yellowsRevealed, yellowNum, yellowTotal)
    if missionNum == 50 then
        table.sort(yellowsRevealed, function(a, b) return tonumber(a.getDescription()) < tonumber(b.getDescription()) end)
        for _, yellowWire in ipairs(yellowsRevealed) do
            printToAll(string.format("One of the yellow wires in play is %s.", yellowWire.getName()))
        end
        return
    end
    yellowMarker = getObjectsWithAllTags({"Marker", "Yellow"})[1]
    markerRotation = {}
    if yellowNum == yellowTotal then
        markerRotation = {0.00, 180.00, 0.00}
    else
        markerRotation = {0.00, 180.00, 180.00}
    end
    for _, yellowWire in ipairs(yellowsRevealed) do
        clone = yellowMarker.clone({position = yellowMarkerPositions[math.floor(tonumber(yellowWire.getDescription())/10)], rotation = markerRotation})
        clone.locked = false
        clone.addTag("Destroy")
    end
end

function sortReds(mainCopy, redNum, redTotal, redHighest)
    if redNum == 0 then return end
    redWireDeck = getObjectsWithAllTags({"Wires", "Red"})[1]
    redCopy = redWireDeck.clone({position={-92.12, 2.38, -6.60}, rotation={0.00, 0.00, 0.00}, smooth=false})
    redCopy.locked = false
    redCopy.shuffle()
    count = 0
    redsRevealed = {}
    if redNum == redTotal then
        while count ~= redNum do
            wire = redCopy.takeObject({position={-92.12, 2.38, -1.60}, rotation={0.00, 0.00, 0.00}, smooth=false})
            wire.locked = false
            if tonumber(wire.getDescription()) > redHighest * 10 then
                wire.destruct()
            else
                wire.addTag("Destroy")
                wire.putObject(mainCopy)
                table.insert(redsRevealed, wire)
                count = count + 1
            end
        end
    else
        tempPile = redCopy.takeObject({position={-92.12, 2.38, -11.60}, rotation={0.00, 0.00, 0.00}, smooth=false})
        tempPile.locked = false
        while tonumber(tempPile.getDescription()) > redHighest * 10 do
            tempPile.destruct()
            tempPile = redCopy.takeObject({position={-92.12, 2.38, -11.60}, rotation={0.00, 0.00, 0.00}, smooth=false})
            tempPile.locked = false
            tempPile.addTag("Destroy")
        end
        table.insert(redsRevealed, tempPile)
        while count ~= redTotal - 1 do
            wire = redCopy.takeObject({position={-92.12, 2.38, -11.60}, rotation={0.00, 0.00, 0.00}, smooth=false})
            wire.locked = false
            wire.addTag("Destroy")
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
            wire = tempPile.takeObject({position={-92.12, 2.38, -1.60}, rotation={0.00, 0.00, 0.00}, smooth=false})
            wire.locked = false
            wire.addTag("Destroy")
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
    setupRedMarkers(redsRevealed, redNum, redTotal)
end

function setupRedMarkers(redsRevealed, redNum, redTotal)
    if missionNum == 50 then
        table.sort(redsRevealed, function(a, b) return tonumber(a.getDescription()) < tonumber(b.getDescription()) end)
        for _, redWire in ipairs(redsRevealed) do
            printToAll(string.format("One of the red wires in play is %s.", redWire.getName()))
        end
        return
    end
    redMarker = getObjectsWithAllTags({"Marker", "Red"})[1]
    markerRotation = {}
    if redNum == redTotal then
        markerRotation = {0.00, 180.00, 0.00}
    else
        markerRotation = {0.00, 180.00, 180.00}
    end
    for _, redWire in ipairs(redsRevealed) do
        clone = redMarker.clone({position = redMarkerPositions[math.floor(tonumber(redWire.getDescription())/10)], rotation = markerRotation})
        clone.locked = false
        clone.addTag("Destroy")
    end
end

function dealWiresToHands(missionNum, playerNum, playerColors, piles)
    if missionNum == 41 then
        yellowNum = playerNum
        if yellowNum == 5 then
            yellowNum = 4
        end
        
        yellowWireDeck = getObjectsWithAllTags({"Wires", "Yellow"})[1]
        yellowCopy = yellowWireDeck.clone({position={-92.12, 2.38, -6.60}, rotation={0.00, 0.00, 0.00}, smooth=false})
        yellowCopy.locked = false
        yellowCopy.shuffle()
        count = 0
        yellowsRevealed = {}
        ix = 1
        if playerNum == 5 then
            ix = 2
        end
        while count ~= yellowNum do
            wire = yellowCopy.takeObject({position={-92.12, 2.38, -1.60}, rotation={0.00, 0.00, 0.00}, smooth=false})
            wire.locked = false
            wire.addTag("Destroy")
            wire.setPosition(piles[ix][1].getPosition())
            table.insert(piles[ix], wire)
            table.sort(piles[ix], function(a, b) return tonumber(a.getDescription()) < tonumber(b.getDescription()) end)
            table.insert(yellowsRevealed, wire)
            count = count + 1
            ix = ix + 1
        end
        yellowCopy.destruct()
        setupYellowMarkers(yellowsRevealed, yellowNum, yellowNum)
    elseif missionNum == 48 then
        yellowWireDeck = getObjectsWithAllTags({"Wires", "Yellow"})[1]
        yellowCopy = yellowWireDeck.clone({position={-92.12, 2.38, -6.60}, rotation={0.00, 0.00, 0.00}, smooth=false})
        yellowCopy.locked = false
        yellowCopy.shuffle()
        count = 0
        ix = 1
        yellowsRevealed = {}
        while count ~= 3 do
            wire = yellowCopy.takeObject({position={-92.12, 2.38, -1.60}, rotation={0.00, 0.00, 0.00}, smooth=false})
            wire.locked = false
            wire.addTag("Destroy")
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
        setupYellowMarkers(yellowsRevealed, yellowNum, yellowNum)
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
        or (playerColors[i] == "Green" and contains(doubleHandColors, "Green")) then
            wirePositions1 = wireHandPositions1[playerColors[i]]
            outerWirePositions1 = wireOuterPositions1[playerColors[i]]
            tokenPositions1 = tokenHandPositions1[playerColors[i]]
            handsDoubled = handsDoubled + 1
            for j = 1, #piles[i + handsDoubled] do
                if ((missionNum == 38 and i == 1) or missionNum == 56) and j == #piles[i + handsDoubled] then
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
        end
    end
end

function sortEquipment(missionNum, playerNum, yellowNum)
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
        if (clone.hasTag("Pack1") and (missionNum < 9 or yellowNum == 0))
        or (clone.hasTag("Pack5") and missionNum < 55)
        or ((clone.getDescription() == "2" or clone.getDescription() == "11" or clone.getDescription() == "12") and missionNum == 3)
        or (clone.getDescription() == "11" and missionNum == 10)
        or (missionNum == 11 and clone.getDescription() == getObjectsWithAllTags({"Numbers", "Destroy"})[1].getName())
        or (clone.getDescription() == "2" and missionNum == 20)
        or (clone.getDescription() == "2" and missionNum == 24) --this is a house rule I implemented after confusion with a wire with a token being swapped
        or (clone.getDescription() == "10" and missionNum == 26)
        or (clone.getDescription() == "7" and missionNum == 27)
        or (clone.getDescription() == "2" and missionNum == 35)
        or (clone.getDescription() == "10" and missionNum == 44)
        or ((clone.getDescription() == "10" or clone.getDescription() == "11") and missionNum == 45)
        or (clone.getDescription() == "7" and missionNum == 46)
        or (clone.getDescription() == "10" and missionNum == 47)
        or (clone.getDescription() == "10" and missionNum == 49)
        or (clone.getDescription() == "10" and missionNum == 51)
        or ((clone.getDescription() == "1" or clone.getDescription() == "12") and missionNum == 52)
        or ((clone.getDescription() == "6" or clone.getDescription() == "9") and missionNum == 53)
        or (clone.getDescription() == "10" and missionNum == 54)
        or (clone.getDescription() == "1010" and missionNum == 57)
        or ((clone.getDescription() == "4" or clone.getDescription() == "7") and missionNum == 58)
        or (clone.getDescription() == "10" and missionNum == 59)
        or (clone.getDescription() == "10" and missionNum == 63)
        or (clone.getDescription() == "10" and missionNum == 65) then
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
            spareEquipment[1].setPositionSmooth({24.35, 1.50, 5.49})
            spareEquipment[1].setRotationSmooth({0.00, 180.00, 180.00})
            spareEquipment[1].removeTag("Spare")
            if spareEquipment[1].getDescription() == "1" then
                notEquals = getObjectsWithTag("NotEquals")[1]
                clone = notEquals.clone({position={-9.18, 1.61, -10.10}, rotation={0.00, 180.00, 0.00}})
                clone.locked = false
                clone.addTag("Destroy")
            elseif spareEquipment[1].getDescription() == "12" then
                equals = getObjectsWithTag("Equals")[1]
                clone = equals.clone({position={-4.59, 1.61, -10.10}, rotation={0.00, 180.00, 0.00}})
                clone.locked = false
                clone.addTag("Destroy")
            end
            spareEquipment[2].setPositionSmooth({24.35, 1.50, 5.49})
            spareEquipment[2].setRotationSmooth({0.00, 180.00, 180.00})
            spareEquipment[2].removeTag("Spare")
            if spareEquipment[2].getDescription() == "1" then
                notEquals = getObjectsWithTag("NotEquals")[1]
                clone = notEquals.clone({position={-9.18, 1.61, -10.10}, rotation={0.00, 180.00, 0.00}})
                clone.locked = false
                clone.addTag("Destroy")
            elseif spareEquipment[2].getDescription() == "12" then
                equals = getObjectsWithTag("Equals")[1]
                clone = equals.clone({position={-4.59, 1.61, -10.10}, rotation={0.00, 180.00, 0.00}})
                clone.locked = false
                clone.addTag("Destroy")
            end
        elseif equipmentToDeal[i].getDescription() == "1" then
            notEquals = getObjectsWithTag("NotEquals")[1]
            clone = notEquals.clone({position={-9.18, 1.61, -10.10}, rotation={0.00, 180.00, 0.00}})
            clone.locked = false
            clone.addTag("Destroy")
        elseif equipmentToDeal[i].getDescription() == "12" then
            equals = getObjectsWithTag("Equals")[1]
            clone = equals.clone({position={-4.59, 1.61, -10.10}, rotation={0.00, 180.00, 0.00}})
            clone.locked = false
            clone.addTag("Destroy")
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
        oddTokensBag = getObjectsWithTag("OddTokens")[1]
        clone = oddTokensBag.clone({position={-9.18, 1.49, -6.38}, rotation={0.00, 180.00, 0.00}})
        clone.locked = false
        clone.addTag("Destroy")
        evenTokensBag = getObjectsWithTag("EvenTokens")[1]
        clone = evenTokensBag.clone({position={-4.59, 1.49, -6.38}, rotation={0.00, 180.00, 0.00}})
        clone.locked = false
        clone.addTag("Destroy")
    elseif missionNum == 24
    or missionNum == 40 then
        x1TokensBag = getObjectsWithTag("x1Tokens")[1]
        clone = x1TokensBag.clone({position={-9.58, 1.49, -7.65}, rotation={0.00, 180.00, 0.00}})
        clone.locked = false
        clone.addTag("Destroy")
        x2TokensBag = getObjectsWithTag("x2Tokens")[1]
        clone = x2TokensBag.clone({position={-6.88, 1.49, -5.20}, rotation={0.00, 180.00, 0.00}})
        clone.locked = false
        clone.addTag("Destroy")
        x3TokensBag = getObjectsWithTag("x3Tokens")[1]
        clone = x3TokensBag.clone({position={-4.19, 1.49, -7.65}, rotation={0.00, 180.00, 0.00}})
        clone.locked = false
        clone.addTag("Destroy")
    elseif missionNum == 58 then
        return
    else
        infoTokens = getObjectsWithTag("InfoTokens")
        table.sort(infoTokens, function(a, b) return tonumber(a.getName()) < tonumber(b.getName()) end)
        for num, token in ipairs(infoTokens) do
            object = token.clone({position=infoTokenPositions[tonumber(token.getName())]})
            object.locked = false
            object.addTag("Destroy")
        end
    end
end

function moveMissionCard(missionNum)
    missionCard = getObjectsWithTag("Mission")[1].clone({position = missionPosition, rotation = missionRotation})
    missionCard.locked = false
    missionCard.addTag("Destroy")
    params = {
        face = missionFaceUrls[missionNum],
        back = missionBackUrls[missionNum]
    }
    missionCard.setCustomObject(params)
    missionCard.reload()
end

function adjustDial(missionNum, playerNum)
    dial = getObjectsWithTag("Dial")[1]
    dial.setPosition({14.78, 1.61, -8.51})
    if missionNum == 51 then
        dial.setRotationSmooth({0.00, 0.00, 0.00})
        currentDialNum = 6
    else
        dial.setRotationSmooth(dialRotations[playerNum])
        currentDialNum = playerNum
    end
end

function moveDialClockwise(self, playerColor)
    currentDialNum = currentDialNum - 1
    zeroText = ""
    if currentDialNum < 0 then
        currentDialNum = 0
        return
    end
    dial = getObjectsWithTag("Dial")[1]
    dial.setPosition({14.78, 1.61, -8.51})
    dial.setRotationSmooth(dialRotations[currentDialNum])
    if currentDialNum == 0 then
        zeroText = " KABOOM!"
    end
    printToAll(string.format("%s has moved the dial to position %d.%s", playerColor, currentDialNum, zeroText))
end

function moveDialAntiClockwise(self, playerColor)
    currentDialNum = currentDialNum + 1
    if currentDialNum > 5 then
        currentDialNum = 5
        return
    end
    dial = getObjectsWithTag("Dial")[1]
    dial.setPosition({14.78, 1.61, -8.51})
    dial.setRotationSmooth(dialRotations[currentDialNum])
    zeroText = ""
    if currentDialNum == 0 then
        zeroText = " KABOOM!"
    end
    printToAll(string.format("%s has moved the dial to position %d.%s", playerColor, currentDialNum, zeroText))
end

----------------------------------
--- MISSION-SPECIFIC FUNCTIONS ---
----------------------------------
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

function chooseRandomInfo(playerColors, includeYellow)
    for _, color in ipairs(playerColors) do
        randomToken = math.random(1, 12 + (includeYellow and 1 or 0))
        printToAll(string.format("%s will take the %d token.", color, randomToken))
    end
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