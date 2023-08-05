local xmin, xmax, ymin, ymax
local clicks = 0

term.clear()
term.setCursorPos(1, 1)
term.write("Click two points.")

repeat
    local event, button, x, y = os.pullEvent("mouse_click")
    if button == 1 then
        clicks = clicks + 1

        paintutils.drawPixel(x, y, colors.red)
        if clicks == 1 then
            xmin = x
            ymin = y
        elseif clicks == 2 then
            xmax = x
            ymax = y

            term.setBackgroundColor(colors.black)
            term.clear()
            paintutils.drawBox(xmin, ymin, xmax, ymax, colors.red)
            term.setCursorPos(1, 1)
            term.write("Click to continue.")
        end
    end
until clicks == 3

term.setBackgroundColor(colors.black)
term.clear()
term.setCursorPos(1, 1)
print("xmin: "..xmin)
print("ymin: "..ymin)
print("xmax: "..xmax)
print("ymax: "..ymax)
