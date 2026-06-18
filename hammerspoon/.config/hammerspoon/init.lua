-- Note: ctrl+1 is reserved by macOS Mission Control (System Settings → Keyboard → Shortcuts → Mission Control → "Switch to Desktop 1").
-- Bindings start at ctrl+2 to avoid that conflict.
hs.hotkey.bind({"ctrl"}, "2", function()
  hs.application.launchOrFocus("iTerm")
end)

hs.hotkey.bind({"ctrl"}, "3", function()
  hs.application.launchOrFocus("Firefox")
end)

hs.hotkey.bind({"cmd", "shift"}, "v", function()
  hs.eventtap.keyStroke({"cmd"}, "space")
  hs.timer.doAfter(0.2, function()
    hs.eventtap.keyStroke({"cmd"}, "4")
  end)
end)

hs.hotkey.bind({"cmd", "shift"}, "space", function()
  hs.eventtap.keyStroke({"cmd"}, "space")
  hs.timer.doAfter(0.2, function()
    hs.eventtap.keyStroke({"cmd"}, "1")
  end)
end)
