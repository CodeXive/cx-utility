Config = {}

Config.Styles = {
    Action = {
        ["Default"] = {
            LabelColor = "#e3e3e3",
            BackgroundColor = "#2ea6d1",
            Position = "LEFT_MIDDLE",    --  LEFT_TOP // LEFT_MIDDLE // LEFT_BOTTOM // CENTER_TOP // CENTER_BOTTOM // RIGHT_TOP // RIGHT_MIDDLE // RIGHT_BOTTOM

            ShowKey = true,
            Key = "E",
            KeyColor = "#e8e8e8"
        },

        ["Key E"] = {
            LabelColor = "#e3e3e3",
            BackgroundColor = "#2ea6d1",
            Position = "LEFT_MIDDLE",

            ShowKey = true,
            Key = "E",
            KeyColor = "#e8e8e8"
        },

        ["Key F"] = {
            LabelColor = "#e3e3e3",
            BackgroundColor = "#2ea6d1",
            Position = "LEFT_MIDDLE",

            ShowKey = true,
            Key = "F",
            KeyColor = "#e8e8e8"
        }
    },

    Notification = {
        ["Default"] = {
            LabelColor = "#e3e3e3",
            BackgroundColor = "#db9927",
            Position = "RIGHT_TOP",    --  LEFT_TOP // LEFT_MIDDLE // LEFT_BOTTOM // CENTER_TOP // CENTER_BOTTOM // RIGHT_TOP // RIGHT_MIDDLE // RIGHT_BOTTOM

            Time = 5,
            Clear = false
        },

        ["Success"] = {
            LabelColor = "#e3e3e3",
            BackgroundColor = "#18c96e",
            Position = "RIGHT_TOP",

            Time = 5,
            Clear = false
        },

        ["Inform"] = {
            LabelColor = "#e3e3e3",
            BackgroundColor = "#db9927",
            Position = "RIGHT_TOP",

            Time = 5,
            Clear = false
        },

        ["Error"] = {
            LabelColor = "#e3e3e3",
            BackgroundColor = "#db4b27",
            Position = "RIGHT_TOP",

            Time = 5,
            Clear = false
        }
    },

    ProgressBar = {
        ["Default"] = {
            LabelColor = "#e3e3e3",
            BackgroundColor = "#b8b8b8",
            FillColor = "#18c96e",
            Position = "CENTER_BOTTOM",     --  CENTER_TOP // CENTER_BOTTOM

            Striped = false,
            Animated = false
        },

        ["Regular"] = {
            LabelColor = "#e3e3e3",
            BackgroundColor = "#b8b8b8",
            FillColor = "#18c96e",
            Position = "CENTER_BOTTOM",     --  CENTER_TOP // CENTER_BOTTOM

            Striped = false,
            Animated = false
        },

        ["Striped"] = {
            LabelColor = "#e3e3e3",
            BackgroundColor = "#b8b8b8",
            FillColor = "#18c96e",
            Position = "CENTER_BOTTOM",

            Striped = true,
            Animated = false
        },

        ["Animated Striped"] = {
            LabelColor = "#e3e3e3",
            BackgroundColor = "#b8b8b8",
            FillColor = "#18c96e",
            Position = "CENTER_BOTTOM",

            Striped = true,
            Animated = true
        }
    },

    ProgressCancelled = {
        Label = "Cancelled",
        LabelColor = "#e3e3e3",
        BackgroundColor = "#db4b27",
        Position = "CENTER_BOTTOM",     --  CENTER_TOP // CENTER_BOTTOM

        Time = 2.5,
        Striped = false,
        Animated = false
    }
}