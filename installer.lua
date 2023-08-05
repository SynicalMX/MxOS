local APP = "MxOS Installer"
local URL = "https://raw.githubusercontent.com/SynicalMX/MxOS/master/build/"
local MINIFIED = "mxos.min.lua"
local UNMINIFIED = "mxos.lua"

local INSTALL_BUTTON = {
    ["text"] = "Install",
    ["size"] = {
        ["xmin"] = 32,
        ["ymin"] = 12,
        ["xmax"] = 50,
        ["ymax"] = 17
    },
    ["pallete"] = {
        ["primary"] = colors.lime,
        ["text"] = colors.white
    }
}

local RUNNING = true
local TERMX, TERMY = term.getSize()

local function write(x, y, text)
    term.setCursorPos(x, y)
    term.write(text)
end

local function download(url, path)
    local request = http.get(url)
    local CONTENTS = request.readAll()
    request.close()

    local file = fs.open(path, "w")
    file.write(CONTENTS)
    file.close()
end

local function setupButton(button)
    local text = button.text
    paintutils.drawFilledBox(button.size.xmin, button.size.ymin, button.size.xmax, button.size.ymax, button.pallete.primary)
    local BUTTON_WIDTH, BUTTON_HEIGHT = (button.size.xmax - button.size.xmin), (button.size.ymax - button.size.ymin)

    local TEXT_X = math.floor((button.size.xmin + (BUTTON_WIDTH / 2)) - (text:len() / 2)) + 1
    local TEXT_Y = math.floor((button.size.ymin) + (BUTTON_HEIGHT / 2))
    term.setCursorPos(TEXT_X, TEXT_Y)
    term.setTextColor(button.pallete.text)
    term.write(text)
end

local function setupMenu()
    term.setBackgroundColor(colors.white)
    term.setTextColor(colors.black)
    term.setCursorBlink(false)
    term.clear()

    paintutils.drawLine(1, 1, TERMX, 1, colors.red)
    write(TERMX, 1, "X")

    local text_x = math.floor(((TERMX - 1) / 2) - (APP:len() / 2))
    write(text_x, 1, APP)

    setupButton(INSTALL_BUTTON)
end

setupMenu()

repeat
    local event, button, x, y = os.pullEvent("mouse_click")
    if button == 1 then
        if x == TERMX and y == 1 then
            term.setBackgroundColor(colors.black)
            term.clear()
            term.setCursorPos(1, 1)
            print("MxOS installation cancelled.\n")
            RUNNING = false
        end

        if x >= INSTALL_BUTTON.size.xmin and x <= INSTALL_BUTTON.size.xmax and y >= INSTALL_BUTTON.size.ymin and y <= INSTALL_BUTTON.size.ymax then
            download(URL..MINIFIED, "startup.lua")
            os.reboot()
        end
    end
until RUNNING == false
