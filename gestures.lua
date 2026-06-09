-- Gestures
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Gestures/

hl.config({
    gestures = {
        workspace_swipe_distance             = 700,
        workspace_swipe_cancel_ratio         = 0.15,
        workspace_swipe_min_speed_to_force   = 5,
        workspace_swipe_direction_lock       = true,
        workspace_swipe_direction_lock_threshold = 10,
        workspace_swipe_create_new           = true,
    },
})

-- 4-finger horizontal swipe to switch workspaces
hl.gesture({ fingers = workspaceSwipeFingers, direction = "horizontal", action = "workspace" })

-- NOTE: the original had 3-finger up/down and 4-finger down gestures using
-- the "dispatcher, exec" style which does not appear to have a Lua equivalent yet.
-- These will need to be re-added once the gesture API supports arbitrary dispatchers.
-- Original gestures for reference:
-- gesture = $gestureFingers, up, special, special
-- gesture = $gestureFingers, down, dispatcher, exec, caelestia toggle specialws
-- gesture = $gestureFingersMore, down, dispatcher, exec, systemctl suspend-then-hibernate
