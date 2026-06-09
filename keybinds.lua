-- Keybinds
-- See https://wiki.hypr.land/Configuring/Basics/Binds/

local wsaction = "~/.config/hypr/scripts/wsaction.fish"

-- ## Shell keybinds

mainMod = "SUPER"

-- Launcher
hl.bind(mainMod .. " + C", hl.dsp.exec_cmd("code"))
hl.bind(mainMod ..  " + SUPER_L",    hl.dsp.global("caelestia:launcher"), { release = true })
--hl.bind(mainMod .. " + catchall",   hl.dsp.global("caelestia:launcherInterrupt"), { non_consuming = true })
hl.bind(mainMod .. " + mouse:272",  hl.dsp.global("caelestia:launcherInterrupt"), { non_consuming = true })
hl.bind(mainMod .. " + mouse:273",  hl.dsp.global("caelestia:launcherInterrupt"), { non_consuming = true })
hl.bind(mainMod .. " + mouse:274",  hl.dsp.global("caelestia:launcherInterrupt"), { non_consuming = true })
hl.bind(mainMod .. " + mouse:275",  hl.dsp.global("caelestia:launcherInterrupt"), { non_consuming = true })
hl.bind(mainMod .. " + mouse:276",  hl.dsp.global("caelestia:launcherInterrupt"), { non_consuming = true })
hl.bind(mainMod .. " + mouse:277",  hl.dsp.global("caelestia:launcherInterrupt"), { non_consuming = true })
hl.bind(mainMod .. " + mouse_up",   hl.dsp.global("caelestia:launcherInterrupt"), { non_consuming = true })
hl.bind(mainMod .. " + mouse_down", hl.dsp.global("caelestia:launcherInterrupt"), { non_consuming = true })

-- Misc shell
hl.bind(kbSession,      hl.dsp.global("caelestia:session"))
hl.bind(kbShowSidebar,  hl.dsp.global("caelestia:sidebar"))
hl.bind(kbClearNotifs,  hl.dsp.global("caelestia:clearNotifs"), { locked = true })
hl.bind(kbShowPanels,   hl.dsp.global("caelestia:showall"))
hl.bind(kbLock,         hl.dsp.global("caelestia:lock"))

-- Restore lock
hl.bind(kbRestoreLock, hl.dsp.exec_cmd("caelestia shell -d"), { locked = true })
hl.bind(kbRestoreLock, hl.dsp.global("caelestia:lock"),       { locked = true })

-- Brightness
hl.bind("XF86MonBrightnessUp",   hl.dsp.global("caelestia:brightnessUp"),   { locked = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.global("caelestia:brightnessDown"), { locked = true })

-- Media
hl.bind(mainMod .. " + CTRL + Space",  hl.dsp.global("caelestia:mediaToggle"), { locked = true })
hl.bind("XF86AudioPlay",         hl.dsp.global("caelestia:mediaToggle"), { locked = true })
hl.bind("XF86AudioPause",        hl.dsp.global("caelestia:mediaToggle"), { locked = true })
hl.bind(mainMod .. " + CTRL + Equal",  hl.dsp.global("caelestia:mediaNext"),   { locked = true })
hl.bind("XF86AudioNext",         hl.dsp.global("caelestia:mediaNext"),   { locked = true })
hl.bind(mainMod .. " + CTRL + Minus",  hl.dsp.global("caelestia:mediaPrev"),   { locked = true })
hl.bind("XF86AudioPrev",         hl.dsp.global("caelestia:mediaPrev"),   { locked = true })
hl.bind("XF86AudioStop",         hl.dsp.global("caelestia:mediaStop"),   { locked = true })

-- Kill/restart shell
hl.bind(mainMod .. " + CTRL + SHIFT + R", hl.dsp.exec_cmd("qs -c caelestia kill"), { release = true })
hl.bind(mainMod .. " + CTRL + ALT + R", hl.dsp.exec_cmd("qs -c caelestia kill; sleep .1; caelestia shell -d"), { release = true })

-- Go to workspace #
for i = 1, 9 do
    hl.bind(kbGoToWs .. " + " .. i, hl.dsp.exec_cmd(wsaction .. " workspace " .. i))
end
hl.bind(kbGoToWs .. " + 0", hl.dsp.exec_cmd(wsaction .. " workspace 10"))

-- Go to workspace group #
for i = 1, 9 do
    hl.bind(kbGoToWsGroup .. " + " .. i, hl.dsp.exec_cmd(wsaction .. " -g workspace " .. i))
end
hl.bind(kbGoToWsGroup .. " + 0", hl.dsp.exec_cmd(wsaction .. " -g workspace 10"))

-- Go to workspace -1/+1
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "-1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = " +1" }))
hl.bind(kbPrevWs,             hl.dsp.focus({ workspace = "-1" }), { repeating = true })
hl.bind(kbNextWs,             hl.dsp.focus({ workspace = " +1" }), { repeating = true })
hl.bind(mainMod .. " + Page_Up",    hl.dsp.focus({ workspace = "-1" }), { repeating = true })
hl.bind(mainMod .. " + Page_Down",  hl.dsp.focus({ workspace = " +1" }), { repeating = true })

-- Go to workspace group -1/+1
hl.bind(mainMod .. " + CTRL + mouse_down", hl.dsp.focus({ workspace = "-10" }))
hl.bind(mainMod .. " + CTRL + mouse_up",   hl.dsp.focus({ workspace = " +10" }))

-- Toggle special workspace
hl.bind(kbToggleSpecialWs, hl.dsp.exec_cmd("caelestia toggle specialws"))

-- Move window to workspace #
for i = 1, 9 do
    hl.bind(kbMoveWinToWs .. " + " .. i, hl.dsp.exec_cmd(wsaction .. " movetoworkspace " .. i))
end
hl.bind(kbMoveWinToWs .. " + 0", hl.dsp.exec_cmd(wsaction .. " movetoworkspace 10"))

-- Move window to workspace group #
for i = 1, 9 do
    hl.bind(kbMoveWinToWsGroup .. " + " .. i, hl.dsp.exec_cmd(wsaction .. " -g movetoworkspace " .. i))
end
hl.bind(kbMoveWinToWsGroup .. " + 0", hl.dsp.exec_cmd(wsaction .. " -g movetoworkspace 10"))

-- Move window to workspace -1/+1
hl.bind(mainMod .. " + ALT + Page_Up",          hl.dsp.window.move({ workspace = "-1" }), { repeating = true })
hl.bind(mainMod .. " + ALT + Page_Down",        hl.dsp.window.move({ workspace = " +1" }), { repeating = true })
hl.bind(mainMod .. " + ALT + mouse_down",       hl.dsp.window.move({ workspace = "-1" }))
hl.bind(mainMod .. " + ALT + mouse_up",         hl.dsp.window.move({ workspace = " +1" }))
hl.bind(mainMod .. " + CTRL + SHIFT + right",   hl.dsp.window.move({ workspace = " +1" }), { repeating = true })
hl.bind(mainMod .. " + CTRL + SHIFT + left",    hl.dsp.window.move({ workspace = "-1" }), { repeating = true })

-- Move window to/from special workspace
hl.bind(mainMod .. " + CTRL + SHIFT + up",   hl.dsp.window.move({ workspace = "special:special" }))
hl.bind(mainMod .. " + CTRL + SHIFT + down", hl.dsp.window.move({ workspace = "e+0" }))
hl.bind(mainMod .. " + ALT + S",             hl.dsp.window.move({ workspace = "special:special" }))

-- Window groups
hl.bind(kbWindowGroupCycleNext, hl.dsp.window.cycle_next(),           { repeating = true })
hl.bind(kbWindowGroupCyclePrev, hl.dsp.window.cycle_next({ next = false }), { repeating = true })
hl.bind("CTRL + ALT + Tab",       hl.dsp.group.next(),                { repeating = true })
hl.bind("CTRL + SHIFT + ALT + Tab", hl.dsp.group.prev(),              { repeating = true })
hl.bind(kbToggleGroup,  hl.dsp.group.toggle())
hl.bind(kbUngroup,      hl.dsp.window.move({ out_of_group = true }))
hl.bind(mainMod .. " + SHIFT + Comma", hl.dsp.group.lock({ action = "toggle" }))

-- Window focus
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "l" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "r" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "u" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "d" }))

-- Move windows
hl.bind(mainMod .. " + SHIFT + left",  hl.dsp.window.move({ direction = "l" }))
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.move({ direction = "r" }))
hl.bind(mainMod .. " + SHIFT + up",    hl.dsp.window.move({ direction = "u" }))
hl.bind(mainMod .. " + SHIFT + down",  hl.dsp.window.move({ direction = "d" }))

-- Resize windows
hl.bind(mainMod .. " + Minus",           hl.dsp.window.resize({ x = -.10, y = 0, relative = true }), { repeating = true })
hl.bind(mainMod .. " + Equal",           hl.dsp.window.resize({ x = .10,  y = 0, relative = true }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + Minus",   hl.dsp.window.resize({ x = 0, y = -.10, relative = true }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + Equal",   hl.dsp.window.resize({ x = 0, y = .10,  relative = true }), { repeating = true })
hl.bind(mainMod .. " + ALT + left",      hl.dsp.window.resize({ x = -.10, y = 0, relative = true }), { repeating = true })
hl.bind(mainMod .. " + ALT + right",     hl.dsp.window.resize({ x = .10,  y = 0, relative = true }), { repeating = true })
hl.bind(mainMod .. " + ALT + up",        hl.dsp.window.resize({ x = 0, y = -.10, relative = true }), { repeating = true })
hl.bind(mainMod .. " + ALT + down",      hl.dsp.window.resize({ x = 0, y = .10,  relative = true }), { repeating = true })

-- Mouse move/resize
hl.bind(kbMoveWindow,   hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(kbResizeWindow, hl.dsp.window.resize(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Center / reset size
hl.bind(mainMod .. " + CTRL + Backslash",       hl.dsp.window.center())
hl.bind(mainMod .. " + CTRL + ALT + Backslash", function()
    hl.dispatch(hl.dsp.window.resize({ x = "55%", y = "70%" }))
    hl.dispatch(hl.dsp.window.center())
end)

-- Window misc actions
hl.bind(kbWindowPip,              hl.dsp.exec_cmd("caelestia resizer pip"))
hl.bind(kbPinWindow,              hl.dsp.window.pin())
hl.bind(kbWindowFullscreen,       hl.dsp.window.fullscreen({ mode = "fullscreen" }))
hl.bind(kbWindowBorderedFullscreen, hl.dsp.window.fullscreen({ mode = "maximized" }))
hl.bind(kbToggleWindowFloating,   hl.dsp.window.float({ action = "toggle" }))
hl.bind(kbCloseWindow,            hl.dsp.window.close())

-- Special workspace toggles
hl.bind(kbSystemMonitor, hl.dsp.exec_cmd("caelestia toggle sysmon"))
hl.bind(kbMusic,         hl.dsp.exec_cmd("caelestia toggle music"))
hl.bind(kbCommunication, hl.dsp.exec_cmd("caelestia toggle communication"))
hl.bind(kbTodo,          hl.dsp.exec_cmd("caelestia toggle todo"))

-- Apps
hl.bind(kbTerminal,     hl.dsp.exec_cmd("app2unit -- " .. terminal))
hl.bind(kbBrowser,      hl.dsp.exec_cmd("app2unit -- " .. browser))
hl.bind(kbEditor,       hl.dsp.exec_cmd("app2unit -- " .. editor))
hl.bind(mainMod .. " + G",    hl.dsp.exec_cmd("app2unit -- github-desktop"))
hl.bind(kbFileExplorer, hl.dsp.exec_cmd("app2unit -- " .. fileExplorer))
hl.bind(mainMod .. " + ALT + E",  hl.dsp.exec_cmd("app2unit -- nemo"))
hl.bind("CTRL + ALT + Escape", hl.dsp.exec_cmd("app2unit -- qps"))
hl.bind("CTRL + ALT + V",   hl.dsp.exec_cmd("app2unit -- pavucontrol"))

-- Utilities
hl.bind("Print",                hl.dsp.exec_cmd("caelestia screenshot"), { locked = true })
hl.bind(mainMod .. " + SHIFT + S",    hl.dsp.global("caelestia:screenshotFreeze"))
hl.bind(mainMod .. " + SHIFT + ALT + S", hl.dsp.global("caelestia:screenshot"))
hl.bind(mainMod .. " + ALT + R",      hl.dsp.exec_cmd("caelestia record -s"))
hl.bind("CTRL + ALT + R",       hl.dsp.exec_cmd("caelestia record"))
hl.bind(mainMod .. " + SHIFT + ALT + R", hl.dsp.exec_cmd("caelestia record -r"))
hl.bind(mainMod .. " + SHIFT + C",    hl.dsp.exec_cmd("hyprpicker -a"))

-- Volume
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true })
hl.bind("XF86AudioMute",    hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),   { locked = true })
hl.bind(mainMod .. " + SHIFT + M", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),  { locked = true })
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ 0; wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ " .. volumeStep .. "%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ 0; wpctl set-volume @DEFAULT_AUDIO_SINK@ " .. volumeStep .. "%-"),        { locked = true, repeating = true })

-- Sleep
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.exec_cmd("systemctl suspend-then-hibernate"), { locked = true })

-- Clipboard and emoji picker
hl.bind(mainMod .. " + V",         hl.dsp.exec_cmd("pkill fuzzel || caelestia clipboard"))
hl.bind(mainMod .. " + ALT + V",   hl.dsp.exec_cmd("pkill fuzzel || caelestia clipboard -d"))
hl.bind(mainMod .. " + Period",    hl.dsp.exec_cmd("pkill fuzzel || caelestia emoji -p"))
hl.bind("CTRL + SHIFT + ALT + V", hl.dsp.exec_cmd("sleep 0.5s && ydotool type -d 1 \"$(cliphist list | head -1 | cliphist decode)\""), { locked = true })

-- Testing
hl.bind(mainMod .. " + ALT + F12", hl.dsp.exec_cmd("notify-send -u low -i dialog-information-symbolic 'Test notification' \"Here's a really long message to test truncation and wrapping\\nYou can middle click or flick this notification to dismiss it!\" -a 'Shell' -A \"Test1=I got it!\" -A \"Test2=Another action\""), { locked = true })
