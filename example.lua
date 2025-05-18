local gui = require("plib/guih")

-- Switch style (try "normal", "whiptail", "modern")
gui.set_style("modern")

-- Create a window
local win = gui.window("Test Window", 5, 3, 50, 20)

-- Add a button that changes the window title when clicked
win.add_button("Change Title", 2, 2, 15, 1, function()
    win.title = "Title Changed!"
end)

-- Add a textbox with a variable name (for demonstration)
win.add_textbox("input", 2, 4, 20, "Type here...")

-- Add an icon (simple ASCII art)
local smiley_icon = {
    "  o  ",
    " /|\\ ",
    " / \\ "
}
win.add_icon(25, 2, smiley_icon, function()
    print("Smiley icon clicked!")
end)

-- Add a list of items
local fruits = {"Apple", "Banana", "Cherry", "Date"}
win.add_list(2, 7, fruits, function(item, index)
    print("List clicked:", item, index)
end)

-- Add an icon list (icons with labels)
local icon_items = {
    {icon = "*", label = "Star"},
    {icon = "#", label = "Hash"},
    {icon = "@", label = "At"},
}
win.add_icon_list(25, 8, icon_items, function(item, index)
    print("Icon list clicked:", item.label, index)
end)

-- Add another button to quit the program
win.add_button("Quit", 2, 18, 10, 1, function()
    print("Quitting...")
    os.exit()
end)

-- Run the GUI event loop
gui.run()
