-- Groups
-- See https://wiki.hypr.land/Configuring/Basics/Variables/

hl.config({
    group = {
        col = {
            border_active          = activeWindowBorderColour,
            border_inactive        = inactiveWindowBorderColour,
            border_locked_active   = activeWindowBorderColour,
            border_locked_inactive = inactiveWindowBorderColour,
        },

        groupbar = {
            font_family              = "JetBrains Mono NF",
            font_size                = 15,
            gradients                = true,
            gradient_round_only_edges = false,
            gradient_rounding        = 5,
            height                   = 25,
            indicator_height         = 0,
            gaps_in                  = 3,
            gaps_out                 = 3,

            text_color               = rgb_hex(onPrimary),
            col = {
                active          = rgba_hex(primary, "d4"),
                inactive        = rgba_hex(outline, "d4"),   -- $outlined4
                locked_active   = rgba_hex(primary, "d4"),
                locked_inactive = rgba_hex(secondary, "d4"),
            },
        },
    },
})
