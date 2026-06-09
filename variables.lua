-- Variables
-- Requires default.lua to be loaded first (color globals must exist)

-- ########### Apps ###########
terminal     = "foot"
browser      = "google-chrome-stable"
editor       = "code"
fileExplorer = "thunar"

-- ########### Touchpad ###########
touchpadDisableTyping = true
touchpadScrollFactor  = 0.3
workspaceSwipeFingers = 4
gestureFingers        = 3
gestureFingersMore    = 4

-- ########### Blur ###########
blurEnabled      = true
blurSpecialWs    = false
blurPopups       = true
blurInputMethods = true
blurSize         = 8
blurPasses       = 2
blurXray         = false

-- ########### Shadow ###########
shadowEnabled     = true
shadowRange       = 20
shadowRenderPower = 3
shadowColour      = rgba_hex(surface, "d4")   -- rgba($surfaced4)

-- ########### Gaps ###########
workspaceGaps      = 20
windowGapsIn       = 5
windowGapsOut      = 10
singleWindowGapsOut = 20

-- ########### Window styling ###########
windowOpacity   = 0.95
windowRounding  = 15
windowBorderSize = 1

activeWindowBorderColour   = rgba_hex(primary, "e6")          -- rgba($primarye6)
inactiveWindowBorderColour = rgba_hex(onSurfaceVariant, "11") -- rgba($onSurfaceVariant11)

-- ########### Misc ###########
volumeStep  = 10   -- In percent
cursorTheme = "sweet-cursors"
cursorSize  = 24


-- ########### Keybinds ###########
-- Workspaces
kbMoveWinToWs    = "SUPER + ALT"
kbMoveWinToWsGroup = "SUPER + CTRL + ALT"
kbGoToWs         = "SUPER"
kbGoToWsGroup    = "SUPER + CTRL"

kbNextWs         = "SUPER + CTRL + right"
kbPrevWs         = "SUPER + CTRL + left"

kbToggleSpecialWs = "SUPER + S"

-- Window groups
kbWindowGroupCycleNext = "ALT + Tab"
kbWindowGroupCyclePrev = "SHIFT + ALT + Tab"
kbUngroup              = "SUPER + U"
kbToggleGroup          = "SUPER + Comma"

-- Window actions
kbMoveWindow             = "SUPER + Z"
kbResizeWindow           = "SUPER + X"
kbWindowPip              = "SUPER + ALT + Backslash"
kbPinWindow              = "SUPER + P"
kbWindowFullscreen       = "SUPER + F"
kbWindowBorderedFullscreen = "SUPER + ALT + F"
kbToggleWindowFloating   = "SUPER + ALT + Space"
kbCloseWindow            = "SUPER + Q"

-- Special workspace toggles
kbSystemMonitor  = "CTRL + SHIFT + Escape"
kbMusic          = "SUPER + M"
kbCommunication  = "SUPER + D"
kbTodo           = "SUPER + R"

-- Apps
kbTerminal     = "SUPER + T"
kbBrowser      = "SUPER + W"
kbEditor       = "SUPER + C"
kbFileExplorer = "SUPER + E"

-- Misc
kbSession      = "ALT + CTRL + Delete"
kbShowSidebar  = "SUPER + N"
kbClearNotifs  = "ALT + CTRL + C"
kbShowPanels   = "SUPER + K"
kbLock         = "SUPER + L"
kbRestoreLock  = "SUPER + ALT + L"
